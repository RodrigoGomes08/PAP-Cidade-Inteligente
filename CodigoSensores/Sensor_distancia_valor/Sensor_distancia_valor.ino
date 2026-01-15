#include <WiFiS3.h>
#include <ArduinoHttpClient.h>
#include <WiFiUdp.h>
#include "Adafruit_VL53L0X.h"

// ----------------------------
// Configuração WiFi
// ----------------------------
char ssid[] = "MobileRouter-9734";
char pass[] = "11176587";

// ----------------------------
// Servidor destino
// ----------------------------
String serverHost = "http://192.168.1.100";
int serverPort = 8000;
String serverPath = "/api/light-sensor";

// Cliente WiFi
WiFiClient wifi;
HttpClient client = HttpClient(wifi, serverHost, serverPort);

// ----------------------------
// Sensor VL53L0X
// ----------------------------
Adafruit_VL53L0X lox = Adafruit_VL53L0X();

// ----------------------------
// NTP
// ----------------------------
WiFiUDP ntpUDP;
const char* ntpServer = "pool.ntp.org";
const long gmtOffset_sec = 0;      // Ajuste GMT
const int daylightOffset_sec = 0;  // Horário de verão

// ======================================================
// SETUP
// ======================================================
void setup() {
  Serial.begin(115200);
  while (!Serial) { delay(1); }

  Serial.println("Ligando ao WiFi...");
  while (WiFi.begin(ssid, pass) != WL_CONNECTED) {
    Serial.print(".");
    delay(500);
  }
  Serial.println("\nWiFi conectado!");
  Serial.print("IP: ");
  Serial.println(WiFi.localIP());

  // Inicializar sensor
  if (!lox.begin()) {
    Serial.println(F("Falha ao iniciar VL53L0X"));
    while (1)
      ;
  }
  Serial.println("VL53L0X iniciado");
}

// ======================================================
// LOOP
// ======================================================
void loop() {
  VL53L0X_RangingMeasurementData_t measure;
  lox.rangingTest(&measure, false);

  int distance = 0;
  if (measure.RangeStatus != 4) {
    distance = measure.RangeMilliMeter;
    Serial.print("Distância (mm): ");
    Serial.println(distance);
  } else {
    Serial.println("Sensor fora de alcance");
  }

  // Obter data/hora via NTP
  String datetime = getNTPDateTime();

  // Enviar ao servidor
  sendToServer(distance, datetime);

  delay(1000);  // 1s
}

// ======================================================
// Função para pegar data/hora via NTP
// ======================================================
String getNTPDateTime() {
  const int NTP_PACKET_SIZE = 48;
  byte packetBuffer[NTP_PACKET_SIZE];

  IPAddress ntpServerIP;
  WiFi.hostByName(ntpServer, ntpServerIP);

  memset(packetBuffer, 0, NTP_PACKET_SIZE);
  packetBuffer[0] = 0b11100011;  // LI, Version, Mode

  ntpUDP.begin(2390);
  ntpUDP.beginPacket(ntpServerIP, 123);
  ntpUDP.write(packetBuffer, NTP_PACKET_SIZE);
  ntpUDP.endPacket();

  delay(1000);

  int size = ntpUDP.parsePacket();
  if (size >= NTP_PACKET_SIZE) {
    ntpUDP.read(packetBuffer, NTP_PACKET_SIZE);

    unsigned long highWord = word(packetBuffer[40], packetBuffer[41]);
    unsigned long lowWord = word(packetBuffer[42], packetBuffer[43]);
    unsigned long secsSince1900 = (highWord << 16) | lowWord;
    const unsigned long seventyYears = 2208988800UL;
    unsigned long epoch = secsSince1900 - seventyYears + gmtOffset_sec;

    int hour = (epoch % 86400L) / 3600;
    int minute = (epoch % 3600) / 60;
    int second = epoch % 60;

    unsigned long days = epoch / 86400L;
    int year = 1970;
    while (days >= 365) {
      if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
        if (days >= 366) days -= 366;
        else break;
      } else {
        days -= 365;
      }
      year++;
    }

    int month = 1;
    int monthDays[] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) monthDays[1] = 29;

    while (days >= monthDays[month - 1]) {
      days -= monthDays[month - 1];
      month++;
    }
    int day = days + 1;

    char buffer[25];
    sprintf(buffer, "%04d-%02d-%02d %02d:%02d:%02d",
            year, month, day, hour, minute, second);
    return String(buffer);
  } else {
    return "0000-00-00 00:00:00";
  }
}

// ======================================================
// Enviar dados via POST JSON
// ======================================================
void sendToServer(int distance, String datetime) {
  if (WiFi.status() != WL_CONNECTED) {
    Serial.println("WiFi desconectado — não foi possível enviar.");
    return;
  }

  String json = "{";
  json += "\"value\": " + String(distance) + ",";
  json += "\"date\": \"" + datetime + "\"";
  json += "}";

  Serial.println("Enviando JSON:");
  Serial.println(json);

  client.beginRequest();
  client.post(serverPath);
  client.sendHeader("Content-Type", "application/json");
  client.sendHeader("Content-Length", json.length());
  client.beginBody();
  client.print(json);
  client.endRequest();

  int status = client.responseStatusCode();
  String response = client.responseBody();

  Serial.print("Resposta HTTP: ");
  Serial.println(status);
  Serial.print("Servidor respondeu: ");
  Serial.println(response);
}
