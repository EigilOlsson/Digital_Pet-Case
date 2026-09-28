//Dette er en underklasse
class SleepParticle extends Particle {
  float size;
  SleepParticle(float x, float y) {
    //Her arver HeartParticle x og y værdierne fra Particle klassen.
    super(x, y);
    size = random(10, 45);
  }

  //Her overrider HeartParticle display metoden fra Particle klassen.
  @Override
    void display() { 
    noFill();
    stroke(0, alpha);
    line(x, y, x + 15, y);
    line(x + 15, y, x, y + 15);
    line(x, y + 15, x + 15, y + 15);
  }
}
