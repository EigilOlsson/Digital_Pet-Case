class Curiosity {
  float x, y;
  float maxCurious, minCurious, curious, useCurious;
  boolean stateCurious;
 String name;


  Curiosity(String name, float x, float y) {
    this.name = name;
    this.x = x;
    this.y = y;
    maxCurious = 200;
    minCurious = 0;
    curious = 100;
    useCurious = 0.1;
    stateCurious = true;
  }

  void display() {

    fill(0);
    textAlign(CENTER);
    textSize(12);
    text(name, x, y + 17);
    textSize(20);
    text("Curiousity: " + int(curious), x, y + 75);
  }
  
  void update(){
    if (stateCurious == true){
    curious= curious + useCurious;
    curious = constrain(curious, 0, 200);
    } else {
         curious= curious - 2*useCurious;
    curious = constrain(curious, 0, 200);
    }
  }
    
    
  }
