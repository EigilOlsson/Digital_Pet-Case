class Activity {
  String title;
  float energyChange;

  Activity(String title, float energyChange) {
    this.title = title;
    this.energyChange = energyChange;
  }

  void sleep(DigitalPet pet) {
    pet.energy += energyChange;

    if (pet.energy >= pet.maxEnergy) {
      pet.energy = pet.maxEnergy;
    }
  }
}
