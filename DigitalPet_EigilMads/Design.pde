class Design {

  Design() {
    create();
  }

  void create() {
    background(#E5E5E3);
    //Baggrunds design
    //Toppen
    strokeWeight(2);
    stroke(0);
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
    fill(#E0C67F);
    rect(0, 480, width, 120);
    strokeWeight(2);
    for (int x = 0; x < 20; x++) {
      for (int y = 0; y < 4; y++) {
        line(-50+x*75, 600, 50+x*75, 480);
        line(850-x*75, 600, 750-x*75, 480);
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

    //Rammen til hylden:
    noStroke();
    fill(#DEB95C);
    rect(290, 200, 10, 200);

    rect(0, 200, 300, 10);
    rect(0, 300, 300, 10);

    fill(#C69926);
    quad(300, 380, 300, 200, 330, 200, 350, 360);

    //Hylder
    quad(0, 370, 0, 400, 290, 400, 290, 370);

    quad(0, 300, 0, 280, 290, 280, 290, 300);

    //Menu skilt
    fill(#674F0A);
    rect(600, 150, 180, 130);
    fill(#E5E5E3);
    rect(610, 160, 160, 110);
    textSize(16);
    fill(0);
    for (int i = 0; i < 5; i++) {
      text("~~~~~~~~~~~~" + " $$$", 690, 180+i*20);
    }

    //Skål til vand
  }
}
