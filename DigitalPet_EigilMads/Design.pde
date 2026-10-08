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

    //Kasseapparat på disken
    fill(70, 45, 20);
    ellipse(680, 365, 150, 20);
    fill(#444444);
    rect(610, 290, 140, 70, 8);
    //Top
    fill(#5E5E5E);
    rect(625, 275, 110, 20, 5);
    //Skærm
    fill(#222222);
    rect(640, 285, 80, 45, 5);
    fill(#8FE388);
    textSize(18);
    textAlign(CENTER);
    text("$12.50", 680, 313);

    //Knapper
    fill(#EEEEEE);
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        rect(625 + j * 18, 335 + i * 8, 12, 5, 2);
      }
    }

    //Lille betalingsterminal
    fill(#333333);
    rect(755, 320, 30, 40, 5);
    fill(#7FD6FF);
    rect(760, 325, 20, 12, 2);
    fill(255);
    textSize(8);
    text("CARD", 770, 347);

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

    //Madvarer til hylderne
    //Hylde 1
    //Kaffepose
    fill(#8B4513);
    rect(235, 225, 45, 55, 5);
    fill(#F2D27A);
    rect(241, 238, 33, 20, 3);
    fill(#4A2E12);
    textSize(8);
    textMode(CENTER);
    text("COFFEE", 257, 251);
    fill(#3A2412);
    ellipse(257, 264, 8, 5);


    //Muffin
    fill(#C47A45);
    ellipse(195, 270, 48, 25);
    fill(#D99558);
    ellipse(195, 257, 45, 30);
    fill(#3A0A5A);
    ellipse(186, 252, 12, 8);
    ellipse(203, 250, 10, 7);
    ellipse(198, 259, 10, 7);
    fill(#A94F35);
    quad(174, 270, 216, 270, 210, 290, 180, 290);


    //Cookie
    fill(#D9A15B);
    ellipse(120, 270, 45, 30);
    //Chokolade stykker
    fill(#613918);
    ellipse(108, 265, 6, 6);
    ellipse(120, 273, 7, 6);
    ellipse(132, 263, 6, 6);
    ellipse(127, 279, 5, 5);
    ellipse(115, 280, 5, 6);
    ellipse(120, 261, 5, 6);
    
    //Kaffekop
    fill(#B9B2B2);
    ellipse(45, 245, 42, 12);
    rect(24, 242, 42, 38);
    ellipse(45, 280, 42, 12);
    fill(#5A351B);
    ellipse(45, 245, 32, 8);
    // Håndtag
    noFill();
    stroke(#B9B2B2);
    strokeWeight(5);
    ellipse(68, 253, 15, 15);
    noStroke();

    //Hylde 2
    //Kaffepose
    fill(#8B4513);
    rect(35, 325, 45, 55, 5);
    fill(#F2D27A);
    rect(41, 338, 33, 20, 3);
    fill(#4A2E12);
    textSize(8);
    textMode(CENTER);
    text("COFFEE", 57, 351);
    fill(#3A2412);
    ellipse(57, 364, 8, 5);


    //Muffin
    fill(#C47A45);
    ellipse(115, 370, 48, 25);
    fill(#D99558);
    ellipse(115, 357, 45, 30);
    fill(#E9B878);
    ellipse(106, 352, 12, 8);
    ellipse(123, 350, 10, 7);
    fill(#A94F35);
    quad(94, 370, 136, 370, 130, 390, 100, 390);


    //Cookie
    fill(#A5700C);
    ellipse(180, 370, 45, 30);
    //Chokolade stykker
    fill(#F5F1EB);
    ellipse(168, 365, 6, 6);
    ellipse(180, 373, 7, 6);
    ellipse(192, 363, 6, 6);
    ellipse(187, 379, 5, 5);
    ellipse(182, 361, 7, 6);
    
    //Kaffekop
    fill(#B9B2B2);
    ellipse(245, 345, 42, 12);
    rect(224, 342, 42, 38);
    ellipse(245, 380, 42, 12);
    fill(#5A351B);
    ellipse(245, 345, 32, 8);
    // Håndtag
    noFill();
    stroke(#B9B2B2);
    strokeWeight(5);
    ellipse(268, 353, 15, 15);
    noStroke();

    //Menu skilt
    fill(#674F0A);
    rect(600, 120, 180, 130);
    fill(#E5E5E3);
    rect(610, 130, 160, 110);
    textSize(16);
    fill(0);
    for (int i = 0; i < 5; i++) {
      text("~~~~~~~~~~~~" + " $$$", 690, 150+i*20);
    }

    //Vandskål
    //Skygge under skålen
    noStroke();
    fill(150, 120, 80);
    ellipse(300, 540, 110, 40);
    //Selveste skålen
    fill(#4F78A8);
    ellipse(300, 525, 110, 45);
    fill(#3D638F);
    ellipse(300, 530, 110, 35);
    //Vandet
    fill(#79CFF2);
    ellipse(300, 518, 88, 27);
    fill(#BCEBFA);
    ellipse(285, 514, 25, 6);
    //Skålens kant
    noFill();
    stroke(#315274);
    strokeWeight(4);
    ellipse(300, 518, 100, 30);
    noStroke();
    strokeWeight(2);
  }
}
