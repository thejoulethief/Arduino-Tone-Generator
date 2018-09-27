import controlP5.*; //import the library required for GUI
import processing.serial.*;

Serial port; //create a port object for serial comms
ControlP5 cp5; //create control object
PFont font; //Font object 
PImage bg; //Background image variable

void setup(){
  size(800, 600);
  bg = loadImage("bg.jpg");
  
  
  port = new Serial(this,"COM6",9600);
  
  cp5 = new ControlP5(this);
  font = createFont("calibri light", 20);
  
  cp5.addButton("Tune1")
    .setCaptionLabel("Fur Elise - Beethoven")
    .setPosition(250, 150)
    .setSize(300, 120)
    .setFont(font);
    
  cp5.addButton("Tune2")
    .setCaptionLabel("Jingle Bells")
    .setPosition(250, 275)
    .setSize(300, 120)
    .setFont(font);
  cp5.addButton("Tune3")
    .setCaptionLabel("Eden - Wake Up")
    .setPosition(250, 400)
    .setSize(300, 120)
    .setFont(font);
  
   
}

void draw() {
  
  background(bg);
  //background(0, 125, 142);
  
  //fill(255,255,255);
  textFont(font);
  text("TONE GENERATOR",330,100);
  
}

void Tune1(){
  port.write('F');

}

void Tune2(){
  port.write('J');

}

void Tune3(){
  port.write('E');
  
}
