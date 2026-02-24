#include <Wire.h>
#include "Adafruit_VL53L0X.h"
#include <Servo.h>
 
Adafruit_VL53L0X lox = Adafruit_VL53L0X();
Servo cancela;
 
const int servoPin = 5;
const int distanciaLimite = 50; // mm
 
bool cancelaAberta = false;
 
void setup() {
  Serial.begin(115200);
  while (!Serial) delay(1);
 
  cancela.attach(servoPin);
  cancela.write(0); // posição fechada
 
  Serial.println("Sistema iniciado");
 
  if (!lox.begin()) {
    Serial.println("Falha ao iniciar o VL53L0X");
    while (1);
  }
}
 
void loop() {
  VL53L0X_RangingMeasurementData_t measure;
  lox.rangingTest(&measure, false);
 
  if (measure.RangeStatus != 4) {
 
    int distancia = measure.RangeMilliMeter;
    Serial.print("Distância: ");
    Serial.print(distancia);
    Serial.println(" mm");
 
    if (distancia <= distanciaLimite && !cancelaAberta) {
 
      Serial.println("Objeto detectado - Abrindo cancela");
 
      cancela.write(90);   // posição aberta
      cancelaAberta = true;
 
      delay(5000);         // espera 5 segundos
 
      cancela.write(0);    // fecha cancela
      Serial.println("Fechando cancela");
 
      cancelaAberta = false;
    }
  }
 
  delay(200);
}