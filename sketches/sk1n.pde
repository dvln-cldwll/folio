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
   tone59_8C();
   tone76_9C();
  tone478C();
   tone323_1C();
   tone52_5C();
   tone7514C();
   if (millis() - initialTime > interval)
  {
    time = nf(int(millis()/3500), 3);
    initialTime = millis();
  }
  if (int(time) % 10 == 0){
    background(0);
  }
  }
  
  void tone478C(){
  stroke(117,60,41,10); //478 C
    
      arc(random(0, width),
        random(0,height), 
        random(width/2, height/2), 
        random(width+2, height+2),   
        random(0,width+2),
        random(0,height+2));
  }     
  void  tone76_9C(){
    pushMatrix();
      translate(width/2, height/2);
      rotate((millis() / 120.0) *PI);
          stroke(226,203,193,10); //76_9 C
            line(random(0,height/2),
              random(0,width/2),
              random(0,width*2),
              random(0,height*2)); 
    popMatrix();
  }

  void tone323_1C(){
    pushMatrix();
     rotate(TWO_PI/180.0);
       stroke(54,41,35,10); //323_1 C
          rect(random(0,height),
            random(0,800),
            random(width*4), 
            random(width*2));
    popMatrix();
  }
  void tone52_5C() {
    stroke(190,144,106,10); //52_5 C
     triangle(random(0, width-100),
        random(0,height-100), 
        random(width*2, height/2), 
        random(width+300, height+300),
        random(200,height),
        random(width*4,600));
        
  } 
  void tone7514C (){
   stroke(217,169,144,10); //7514 C
    ellipse(random(0,width),
        random(0,height),
        random(width/2), 
        random(width/2));
  }    
  void  tone59_8C(){
    stroke(214,185,166,10); //59_8 C 
      quad(random(0, 2000),
        random(0,1000), 
        random(width*2, height*2), 
        random(width+150, height+150),
        random(width*6,height*6),
        random(height*4,width*4),
        random(width+400,height+400),
        random(height+600,width+600));
  }
