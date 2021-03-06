  #define P0 0    // Porta Digital 0   -  Chave  
  #define P1 1    // Porta Digital 1   -  Led 2
  #define P2 2    // Porta Digital 2   -  Led 3
  #define P3 3    // Porta Digital 3   -  Led 4  -  PWM  
  #define P4 4    // Porta Digital 4   -  Led 5
  #define P5 5    // Porta Digital 5   -  Led 6  -  PWM
  #define P6 6    // Porta Digital 6   -  Transistor Q3  -  PWM
  #define P7 7    // Porta Digital 7   -  Led 8
  #define P8 8    // Porta Digital 8   -  Led 7
  #define P9 9    // Porta Digital 9   -  Transistor Q2  -  PWM
  #define P10 10  // Porta Digital 10  -  Servo1  -  PWM
  #define P11 11  // Porta Digital 11  -  Servo2  -  PWM
  #define P12 12  // Porta Digital 12  -  Buzzer
  #define P13 13  // Porta Digital 13  -  Led 9
  #define P14 14  // Porta Analogica 0 -  Led 1
  #define P15 15  // Porta Analogica 1 -  JP6 - POT 1
  #define P16 16  // Porta Analogica 2 -  JP7 - POT 2
  #define P17 17  // Porta Analogica 3 -  Transistor Q5
  #define P18 18  // Porta Analogica 4 -  Transistor Q4
  #define P19 19  // Porta Analogica 5 -  LDR
  
  #define AP0 14  // Porta Analogica 0 Usando como digital -  Led 1
  #define AP1 15  // Porta Analogica 1 Usando como digital -  JP6 - POT 1
  #define AP2 16  // Porta Analogica 2 Usando como digital -  JP7 - POT 2
  #define AP3 17  // Porta Analogica 3 Usando como digital -  Transistor Q5
  #define AP4 18  // Porta Analogica 4 Usando como digital -  Transistor Q4
  #define AP5 19  // Porta Analogica 5 Usando como digital -  LDR

  #define A0 0    // Porta Analogica 0 -  Led 1
  #define A1 1    // Porta Analogica 1 -  JP6 - POT 1
  #define A2 2    // Porta Analogica 2 -  JP7 - POT 2
  #define A3 3    // Porta Analogica 3 -  Transistor Q5
  #define A4 4    // Porta Analogica 4 -  Transistor Q4
  #define A5 5    // Porta Analogica 3 -  LDR

  #define LED_1 14
  #define LED_2 1
  #define LED_3 2
  #define LED_4 3
  #define LED_5 4
  #define LED_6 5
  #define LED_7 8
  #define LED_8 7
  #define LED_9 13

  #define Q2 9    //PWM
  #define Q3 6    //PWM
  #define Q4 18
  #define Q5 17

  #define LDR 5
  #define JP6 1
  #define JP7 2
  #define CHAVE 0 
  #define BOTAO 0   
  #define BUZZER  12 
  #define SERVO_1 10
  #define SERVO_2 11

int led[] = { LED_1, LED_2, LED_3, LED_4, LED_5, LED_6, LED_7, LED_8, LED_9 }; // array com a sequencia dos leds
int num_pins = 9;                  // tamanho do array
int LED = AP4;

void setup() {  
  int i;
  pinMode(A3, INPUT);
  pinMode(LED, OUTPUT);
  
  for (i = 0; i < num_pins; i++){
      pinMode(led[i], OUTPUT);
  }
  Serial.begin(9600);	  // Inicializa a comunicacao serial com o PC
  //Serial.println("Iniciando Debug");
}

void loop() {
  int leitura_analogica = 0;       
  int leitura_digital = 0; 

  Serial.println(""); 
  digitalWrite(LED, LOW);                // Desliga o LED 
  delay (100);
  leitura_analogica = analogRead(A3);   // Le o valor analogico da entrada com o divisor resistivo Fotodiodo 
  Serial.print("Valor Analogico do FotoReceptor com led apagado: ");
  Serial.println(leitura_analogica);    
  digitalWrite(LED, HIGH);   // Liga o LED 1
  delay(100);            // Espera
  leitura_analogica = analogRead(A3);   // Le o valor analogico da entrada com o divisor resistivo Fotodiodo 
  Serial.print("Valor Analogico do FotoReceptor com led aceso: ");
  Serial.println(leitura_analogica);  
  delay (2000);
}

