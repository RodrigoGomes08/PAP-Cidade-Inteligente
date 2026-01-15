#include <SoftwareSerial.h>
#include <WiFiS3.h>               // Biblioteca correta para o UNO R4 WiFi
#include <ArduinoHttpClient.h>    // Para fazer POST HTTP

SoftwareSerial gps(2, 3); // RX, TX

String nmea = "";
unsigned long lastPrint = 0;

// -------- CONFIG WiFi --------
const char* WIFI_SSID = "MobileRouter-9734";
const char* WIFI_PASS = "11176587";

// -------- CONFIG SERVIDOR --------
String serverHost = "http://192.168.1.100";
int serverPort = 8000;
String serverPath = "/api/light-sensor";

// Cliente de WiFi
WiFiClient wifi;
HttpClient client = HttpClient(wifi, serverHost, serverPort);

String dateTimeUTC = "";

void setup() {
    Serial.begin(9600);
    gps.begin(9600);

    // -------- Conectar WiFi --------
    Serial.println("Conectando ao WiFi...");
    while (WiFi.begin(WIFI_SSID, WIFI_PASS) != WL_CONNECTED) {
        Serial.print(".");
        delay(500);
    }
    Serial.println("\nWiFi conectado!");
    Serial.print("IP: ");
    Serial.println(WiFi.localIP());
}

void loop() {

    while (gps.available()) {
        char c = gps.read();

        if (c == '\n') {
            processNMEA(nmea);
            nmea = "";
        } else {
            nmea += c;
        }
    }
}

// -------------------------------------------------------
void processNMEA(String s) {
    s.trim();

    if (s.startsWith("$GNRMC") || s.startsWith("$GPRMC")) {
        parseRMC(s);
    }

    if (s.startsWith("$GNGGA") || s.startsWith("$GPGGA")) {
        parseGGA(s);
    }
}

// -------------------------------------------------------
void parseRMC(String sentence) {

    String parts[15];
    int idx = 0;

    for (int i = 0; i < sentence.length(); i++) {
        if (sentence[i] == ',') idx++;
        else parts[idx] += sentence[i];
    }

    if (parts[2] != "A") return;

    dateTimeUTC = parts[9] + " " + parts[1];

    printLatLon(parts[3], parts[4], parts[5], parts[6]);
}

// -------------------------------------------------------
void parseGGA(String sentence) {

    String parts[15];
    int idx = 0;

    for (int i = 0; i < sentence.length(); i++) {
        if (sentence[i] == ',') idx++;
        else parts[idx] += sentence[i];
    }

    if (parts[6].toInt() == 0) return;

    printLatLon(parts[2], parts[3], parts[4], parts[5]);
}

// -------------------------------------------------------
double toDecimal(String v) {
    double raw = v.toFloat();
    int deg = int(raw / 100);
    double min = raw - deg * 100;

    return deg + (min / 60.0);
}

// -------------------------------------------------------
void sendToServer(double lat, double lon, String datetime) {

    if (WiFi.status() != WL_CONNECTED) {
        Serial.println("WiFi desconectado. Não foi possível enviar.");
        return;
    }

    // JSON a enviar
    String json = "{";
    json += "\"lat\": " + String(lat, 6) + ",";
    json += "\"long\": " + String(lon, 6) + ",";
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

    Serial.print("Código HTTP: ");
    Serial.println(status);
    Serial.print("Resposta: ");
    Serial.println(response);
}

// -------------------------------------------------------
void printLatLon(String lat, String ns, String lon, String ew) {

    if (lat.length() < 3 || lon.length() < 3) return;

    if (millis() - lastPrint < 1000) return;
    lastPrint = millis();

    double latDec = toDecimal(lat);
    double lonDec = toDecimal(lon);

    if (ns == "S") latDec = -latDec;
    if (ew == "W") lonDec = -lonDec;

    Serial.println();
    Serial.println("===== COORDENADAS =====");
    Serial.print("lat: "); Serial.println(latDec, 6);
    Serial.print("lon: "); Serial.println(lonDec, 6);
    Serial.print("Data/Hora UTC: "); Serial.println(dateTimeUTC);

    Serial.print("Google Maps: https://maps.google.com/?q=");
    Serial.print(latDec, 6);
    Serial.print(",");
    Serial.println(lonDec, 6);
    Serial.println("=========================");

    sendToServer(latDec, lonDec, dateTimeUTC);
}
