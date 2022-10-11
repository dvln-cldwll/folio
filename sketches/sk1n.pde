String time = "000";
int initialTime;
int interval = 1000;


void setup() {
    size(700, 700);
    background(0, 0, 0);
    noCursor();
    noFill(); 
      initialTime = millis();

  }
  
  void draw() {
  tone7514C(); // mid tone
 tone323_1C(); // dark tone
  tone52_5C(); // mid tone  
  tone478C(); // dark tone  
  tone76_9C(); // light tone
  tone59_8C();// light tone
   if (millis() - initialTime > interval)
  {
    time = nf(int(millis()/3500), 3);
    initialTime = millis();
  }
  if (int(time) % 10 == 0){
    background(0);
  }
  }
  
 void  tone76_9C() {
  pushMatrix();
  translate(width/2, height/2);
  rotate((millis() / 120.0) *PI);
  stroke(226, 203, 193, 10); //76_9 C
  line(random(0, height/2), 
    random(0, width/2), 
    random(0, width), 
    random(0, height)); 
  popMatrix();
}
void  tone59_8C() {
  stroke(214, 185, 166,10); //59_8 C 
  quad(random(1384,width/2), 
    random(0,width/2), 
    random(0,height/2), 
    random (width/2,height), 
    random(width,height/2), 
    random(0, height/2), 
    random(height, width/2), 
    random(width/2,height));
}
void tone52_5C() {
  stroke(190, 144, 106, 20); //52_5 C
  triangle(random(0, width-50), 
    random(0, height-5), 
    random(width/2, height/2), 
    random(width+300, height+300), 
    random(200, height), 
    random(width*2, height + 200));
} 
void tone7514C () {
  stroke(217, 169, 144, 20); //7514 C
  ellipse(random(0, width), 
    random(0, height), 
    random(width/2), 
    random(width/2));
}    


void tone478C() {
  stroke(117, 60, 41, 60); //478 C

  arc(random(0, width), 
    random(0, height), 
    random(width/4, height/2), 
    random(width+2, height+2), 
    random(0, width+2), 
    random(0, height+2));
}     


void tone323_1C() {
  pushMatrix();
  rotate(TWO_PI/180.0);
  stroke(54, 41, 35, 60); //323_1 C
  rect(random(0, height), 
    random(0, 1500), 
    random(width -20), 
    random(width/2));
  popMatrix();
}
