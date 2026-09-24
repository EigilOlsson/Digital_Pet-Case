class Activity {
  String title;
  int energyChange;



  Activity(String title, int energyChange) {
    this.title = title;
    this.energyChange = energyChange;
  }

  void sleep(DigitalPet pet) {
    pet.changeEnergy(energyChange);
   
  }
  

}
