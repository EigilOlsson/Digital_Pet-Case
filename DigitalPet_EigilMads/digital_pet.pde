class DigitalPet {
  String name;
  float x;
  float y;
  private float energy;
  float maxEnergy;
  float energyUse;
  boolean energyState;


  DigitalPet(String name, float x, float y) {
    this.name = name;
    this.x = x;
    this.y = y;
    energy = 200;
    maxEnergy = 200;
    energyUse=0.1;
    energyState = true;
  }

  void update() {
    if (energyState==true) {
      energy = energy - energyUse;
      energy = constrain(energy, 0, 200);
    } else {
      energy += energy + energyUse;
      energy = constrain(energy, 0, 200);
      energyState=true;
    }
  }

  void changeEnergy(int energyChange) {
    if (energyChange==1) {
      energyState=false;
      energy = constrain(energy, 0, 200);
      eye.sleepyEyes(1);
    }
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


    // Næse
    fill(255, 120, 140);
    triangle(x, y - 20, x - 6, y - 12, x + 6, y - 12);

    // knorhår
    fill(130);
    rect(x+5, y - 17, 13, 2);
    stroke(130);

    line(x+9, y-15, x+19, y-10);
    line(x+9, y-17, x+19, y-22);
    line(x-9, y-15, x-19, y-10);
    line(x-9, y-17, x-19, y-22);
    noStroke();
    rect(x-17, y - 17, 13, 2);


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
