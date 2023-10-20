fishes [] school = new fishes [10];
fishHook playerHook= new fishHook();
void setup(){
  size(400,400);
  for ( int i=0; i<school.length; i++){
  school[i]= new fishes(((int)(Math.random()*400)),((int)(Math.random()*400)),
  color(((int)(Math.random()*256)),((int)(Math.random()*256)),
  ((int)(Math.random()*256))));
  }

}


void draw(){
background(0, 128, 255);
 for ( int i =0; i<school.length; i++){
    school[i].show();
    school[i].move();
    playerHook.mousePos();
playerHook.show(); // keep in loop if i want to show motion
}

}
 




class fishes{
  int myX,myY, Bcolor;
  fishes( int x, int y, int c){
    myX=x;
    myY=y;

    Bcolor= c;
   
  }
 
void show(){
 fill(Bcolor);
  strokeWeight(1);
  ellipse(myX,myY,30,10);
  fill(0);
  ellipse(myX-5,myY,3,3);
  line(myX+25,myY,myX+15,myY);
  line(myX+25,myY+3,myX+15,myY);
  line(myX+25,myY-3,myX+15,myY);
 
 
}

void move(){
   
  if (mouseX> myX){
   myX=myX +(int)(Math.random()*5)-1;
  }
  if (mouseX < myX){
    myX=myX +(int)(Math.random()*5)-4;
  }
  if(mouseY>myY){
    myY=myY +(int)(Math.random()*5)-1;
  }
  if(mouseY<myY){
    myY=myY +(int)(Math.random()*5)-4;
  }
 
 
  //make it fish and a hook that follows mouse
 
}


}

class fishHook{
  int pMouseX,pMouseY;
  fishHook(){
    pMouseX=mouseX;
     pMouseY=mouseY;
  }
void show(){
strokeWeight(3);
  line(pMouseX,pMouseY,pMouseX,pMouseY+40);
noFill(); 
arc(pMouseX-10, pMouseY+40, 20, 20, 0,PI);
}
void mousePos(){
 pMouseX=mouseX;
     pMouseY=mouseY;
}
}
 





 
void move(){
 
 
 
}
