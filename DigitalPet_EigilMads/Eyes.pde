class Eye {

  float angle = 0.0;
  String titleEye;
  float eyeX;
  float eyeY;
  float eyeR;
  
  Eye(String titleEye, float eyeX, float eyeY, float eyeR) {
    this.titleEye = titleEye;
    this.eyeX = eyeX;
    this.eyeY = eyeY;
    this.eyeR = eyeR;
 }


  
  void update(int mx, int my) {
    angle = atan2(my-eyeY, mx-eyeX);
  }
  
  
  
  

  void display() {

    
    pushMatrix();
    translate(eyeX, eyeY);
    fill(255);
    ellipse(0, 0, eyeR, eyeR);
    rotate(angle);
    fill(0);
    ellipse(eyeR/4, 0, eyeR/2, eyeR/2);
    fill(255);
    ellipse(eyeR/6, 0, eyeR/3, eyeR/3);
    popMatrix();
  }
  


}
