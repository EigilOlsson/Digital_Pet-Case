DigitalPet pet;
Activity sleepActivity;

void setup() {
  size(600, 400);
  pet = new DigitalPet("Phip", width/2, height/2);
  
  sleepActivity = new Activity("Sleep", 0.4);
}

void draw() {  
  background(220);

  pet.update();
  pet.display();
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    sleepActivity.sleep(pet);
  }
}
