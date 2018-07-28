/*copying a sketch from Megan Parise Schmidt's tweet
https://twitter.com/Veganmathbeagle/status/1021117177490018305
Zitzman, Drawing Geometric
*/

int sz = 70;

void setup(){
  size(600,600);
  colorMode(HSB);
}
  
void draw(){
  background(255);
  translate(width/2,height/2);
  float sz = map(mouseX,0,width,20,200);
  float angle = map(mouseY,0,height,0,TWO_PI);
  rotate(angle);
  octagon(sz,angle);
  //zitzman(sz);
  saveFrame("####.png");
}

void octagon(float sz,float angle){
 /*beginShape();
 for (int i=0;i<8;i++){
   vertex(sz*cos(i*PI/4)/2,sz*sin(i*PI/4)/2);
 }
 endShape(CLOSE);
 */
 
 //blue rectangles
 stroke(255);
 fill(50*angle,255,255);
 for (int i=0;i<8;i++){
   pushMatrix();
   translate(-sz/2,-sz/2);
   rotate(-PI/2);
   rect(0,0,sz/sqrt(2),sz);
   float p = sz - sz/sqrt(2);
   line(sz/sqrt(2),0,-p,sz);
   line(-p,0,sz/sqrt(2),sz);
   //outside triangles
   translate(sz/sqrt(2),0);
   //rotate(PI/4);
   triangle(0,0,0,sz,sz,sz);
   triangle(0,sz,0,2*sz,sz,sz);
   
   popMatrix();
   rotate(PI/4);
 }
}

void zitzman(int sz){
  fill(0,0,151);
  stroke(255);
  for (int i=0;i<8;i++){
    translate(sz,0);
    rect(0,0,sz*2,sz*2);
    
    rotate(PI/4);
  }
}
