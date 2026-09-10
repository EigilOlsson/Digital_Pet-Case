class DigitalPet {
  String name;
  float x;
  float y;
  float energy;
  boolean glad =true;
  float maxEnergy;
  float energyUse=0.2;
  boolean energyTrue = true;
  int sleepTimer = 0;
  
  DigitalPet(String name, float x, float y) {
    this.name = name;
    this.x = x;
    this.y = y;
    energy = 200;
    maxEnergy = 200;
  }

void update() {

  if (energyTrue) {
    energy -= energyUse;
  } else {
    energy += energyUse;
    sleepTimer--;

    if (sleepTimer <= 0) {
      energyTrue = true;
    }
  }

  if (energy < 0) {
    energy = 0;
  }

  if (energy > maxEnergy) {
    energy = maxEnergy;
  }

  if (energy < maxEnergy / 2) {
    glad = false;
  } else {
    glad = true;
  }

  if (energy < 10 && energyTrue) {
    sleep();
  }
}

void sleep() {
  energyTrue = false;
  sleepTimer = 480;
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
    ellipse(x - 15, y - 35, 10, 14);
    ellipse(x + 15, y - 35, 10, 14);

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
    text(name, x, y +17);
    text("Energi: " + int(energy), x, y + 75);

    if (glad==false) {
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
