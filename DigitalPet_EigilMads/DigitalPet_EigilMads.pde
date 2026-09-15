DigitalPet pet;
Activity sleepActivity;
float petX = 300;
float petY = 200;

Eye eye, eye2;

void setup() {
  size(800, 600);
  pet = new DigitalPet("Phip", width/2, height/2);

  sleepActivity = new Activity("Sleep", 0.4);

  eye = new Eye("eye1", petX-15, petY-40, 20);
  eye2 = new Eye("eye1", petX+15, petY-40, 20);
}

void draw() {
  background(#E5E5E3);

  pet.update();
  pet.display();

  eye.update(mouseX, mouseY);
  eye.display();

  eye2.update(mouseX, mouseY);
  eye2.display();
  //Baggrunds design
  //Toppen
  fill(#A58B44);
  rect(0, 0, width, 100);
  fill(#674F0A);
  rect(0, 100, width, 10);
  fill(255);
  //Coffee tekst
  textSize(80);
  textMode(CENTER);
  text("COFFEE", width/2, 70);
  //Gulvet
  strokeWeight(2);
  for (int x = 0; x < 15; x++) {
    for (int y = 0; y < 4; y++) {
      fill(#E0C67F);
      rect(0+x*55, height-y*40, 55, 55);
    }
  }
  //Disken
  fill(#935F10);
  rect(300, 380, 500, 100);
  fill(#7E4D04);
  quad(300, 380, 350, 360, 800, 360, 800, 380);
  fill(#583C13);
  rect(300, 380, 500, 10);

  //Hylde med varer
  //Bund
  fill(#583C13);
  rect(0, 455, 300, 25);
  fill(#DEB95C);
  rect(0, 420, 300, 35);
  fill(#583C13);
  rect(0, 400, 300, 20);

  //Rammen til køleren:
  noStroke();
  fill(#DEB95C);
  rect(290, 200, 10, 200);
  
  rect(0, 200, 300, 10);
  rect(0, 300, 300, 10);
  
  fill(#C69926);
  quad(300, 380, 300, 200, 330, 200, 350, 360);
}


void keyPressed() {
  if (key == 's' || key == 'S') {
    sleepActivity.sleep(pet);
  }
}
