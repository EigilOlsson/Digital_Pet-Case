DigitalPet pet;
Activity sleepActivity;
float petX = 300;
float petY = 200;

Eye eye, eye2;

void setup() {
  size(600, 400);
  pet = new DigitalPet("Phip", petX, petY);

  sleepActivity = new Activity("Sleep", 0.4);

  eye = new Eye("eye1", petX-15, petY-40, 20);
  eye2 = new Eye("eye1", petX+15, petY-40, 20);
}

void draw() {
  background(220);

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
