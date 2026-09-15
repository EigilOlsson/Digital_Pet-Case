class DigitalPet {
  String name;
  float x;
  float y;
  private float energy;
  float maxEnergy;
  float energyUse = 0.4;

  DigitalPet(String name, float x, float y) {
    this.name = name;
    this.x = x;
    this.y = y;
    energy = 200;
    maxEnergy = 200;
  }

  void update() {
    energy = energy - energyUse;
    energy = constrain(energy, 0, 200);
  }
  
  void changeEnergy(float amount) {
  energy += amount;
  energy = constrain(energy, 0, 200);
  }
  

  void display() {
    noStroke();

    // Krop
    fill(120, 200, 140);
    ellipse(x, y + 20, 90, 80);

    // Hoved
    fill(150, 220, 170);
    ellipse(x, y - 30, 80, 70);

    // Ører
    fill(150, 220, 170);
    triangle(x - 35, y - 50, x - 25, y - 85, x - 5, y - 55);
    triangle(x + 35, y - 50, x + 25, y - 85, x + 5, y - 55);

    // Øjne
    fill(30);
    ellipse(x - 15, y - 35, 14, 18);
    ellipse(x + 15, y - 35, 14, 18);

    // Næse
    fill(255, 120, 140);
    triangle(x, y - 20, x - 6, y - 12, x + 6, y - 12);

    // Halsbånd
    stroke(80, 40, 100);
    strokeWeight(7);
    line(x - 34, y + 1, x + 34, y + 1);

    // Lille pynt på halsbåndet
    noStroke();
    fill(255, 120, 160);
    ellipse(x - 25, y + 1, 7, 7);
    ellipse(x + 25, y + 1, 7, 7);

    // Navneplade
    fill(255, 215, 80);
    stroke(180, 130, 30);
    strokeWeight(2);
    ellipse(x, y + 15, 38, 30);

    fill(0);
    textAlign(CENTER);
    textSize(12);
    text(name, x, y + 17);
    textSize(20);
    text("Energi: " + int(energy), x, y + 75);

    if (energy < 100) {
      // Mund sur
      stroke(30);
      line(x, y - 12, x - 7, y - 7);
      line(x, y - 12, x + 7, y - 7);
    } else {
      // Mund glad
      stroke(30);
      line(x, y - 7, x - 7, y - 12);
      line(x, y - 7, x + 7, y - 12);
    }
  }
}
