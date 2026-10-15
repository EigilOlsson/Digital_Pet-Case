//Dette er en underklasse
class SleepParticle extends Particle {
  float size;
  SleepParticle(float x, float y) {

    super(x, y);
    size = random(10, 45);
  }

  @Override
    void display() { 
    noFill();
    stroke(0, alpha);
    line(x, y, x + 15, y);
    line(x + 15, y, x, y + 15);
    line(x, y + 15, x + 15, y + 15);
  }
}
