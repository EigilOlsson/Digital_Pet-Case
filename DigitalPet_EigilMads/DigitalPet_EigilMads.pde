DigitalPet pet;
Activity sleepActivity;
Design design;
float petX = 400;
float petY = 300;

Eye eye, eye2;

void setup() {
  size(800, 600);
  pet = new DigitalPet("Phip", petX, petY);

  sleepActivity = new Activity("Sleep", 0.4);

  eye = new Eye("eye1", petX-15, petY-40, 20);
  eye2 = new Eye("eye1", petX+15, petY-40, 20);
  design = new Design();
}

void draw() {
  design.create();
  
  pet.update();
  pet.display();

  eye.update(mouseX, mouseY);
  eye.display();

  eye2.update(mouseX, mouseY);
  eye2.display();
}


void keyPressed() {
  if (key == 's' || key == 'S') {
    sleepActivity.sleep(pet);
  }
}
