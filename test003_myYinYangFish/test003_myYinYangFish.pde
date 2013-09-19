YinyangFish myYinyangFish;
int windowSize=400;
int fishSize=150;
void setup(){
 size(windowSize,windowSize); 
 noStroke();
 myYinyangFish=new YinyangFish(fishSize);
}
void draw(){
  myYinyangFish.roll();
}
class YinyangFish{
  float radius=100;
  float angle=0;
  YinyangFish(float radius){
    this.radius=radius;
  }  
  //draw the yin-yang fish
  void show(){
    background(51);
    translate(width/2,height/2);
    rotate(angle);
    fill(0);
    arc(0,0,2*radius,2*radius,0,PI);
    fill(255);
    arc(0,0,2*radius,2*radius,PI,2*PI);
    //arc(radius/2,0,radius,radius,0,PI);
    ellipse(radius/2,0,radius,radius);
    fill(0);
    //arc(-radius/2,0,radius,radius,PI,2*PI);
    ellipse(-radius/2,0,radius,radius);
    ellipse(radius/2,0,radius/5,radius/5);
    fill(255);
    ellipse(-radius/2,0,radius/5,radius/5);
  }
  void roll(){
    this.angle+=0.01*PI; 
    this.show(); 
  }
}
