DigitalPet pet;
Activity sleepActivity;
Design design;

Curiosity curiosity;
float petX = 400;
float petY = 500;
float petStatsX = 50;
float petStatsY = -50;
float lastTime;

Eye eye, eye2;

ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  size(800, 600);
  pet = new DigitalPet("Phip", petX, petY);

  sleepActivity = new Activity("Sleep", 1);

  eye = new Eye("eye1", petX-15, petY-40, 20);
  eye2 = new Eye("eye1", petX+15, petY-40, 20);
  design = new Design();
  curiosity = new Curiosity("c1", petX, petY+20);
}

void draw() {
  design.create();


  pet.update();
  pet.display();

  
  curiosity.update();
  curiosity.display();

  eye2.update(mouseX, mouseY);
  eye2.display();

  eye.update(mouseX, mouseY);
  eye.display();

  for (int i = particles.size() - 1; i >= 0; i--) {
    Particle p = particles.get(i);

    p.update();
    p.display();

    if (p.isDead()) {
      particles.remove(i);
    }
  }
}


void keyPressed() {
  if (key == 's' || key == 'S') {
    sleepActivity.sleep(pet);
    if (millis() - lastTime > 150) {
      particles.add(new SleepParticle(
        petX + random(-16, 16),
        petY - 50 + random(-16, 16)
        ));
      lastTime = millis();
    }
  }
}
