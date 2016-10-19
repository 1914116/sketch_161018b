int X = 10;
int Y = 10;
int hop = 10;
Car A = new Car(50,3,350,50);
Car F = new Car(40,-3,80,100) ;
Car B = new Car(60,-5,30,150);
Car C = new Car(70,3, 150, 250);
Car D = new Car(70,-4, 150, 350);
Car E = new Car(70,-3, 150, 300);
void setup(){
size(400,400);

}
void draw(){
  background(155,0,0);
fill(0,0,155);
ellipse(X,Y,35,35);
A.display();
B.display();
C.display();
D.display();
E.display();
F.display();
A.moveLeft();
B.moveLeft();
C.moveLeft();
D.moveLeft();
E.moveLeft();
F.moveLeft();

}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
        Y-=hop;
      }
      else if(keyCode == DOWN)
      {
        Y+=hop;
      }
      else if(keyCode == RIGHT)
      {
       X+=hop;
      }
      else if(keyCode == LEFT)
      {
       X-=hop;
      }
   }
}
class Car{
 int x,y,size,speed;
 Car(int size, int speed, int x, int y){
   this.size= size;
   this.speed= speed;
   this.x= x;
   this.y= y;
}
 void display() 
  {
    fill(0,255,0);
    rect(x,y,size,50);
  }
void moveLeft(){
  x-=speed;
  if(x<=0){
    speed = -speed;
  }
    else if(x>=400){
      speed= -speed;
}
}

}

