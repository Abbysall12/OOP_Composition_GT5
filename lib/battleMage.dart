class battleMage {
  final String name;
  int Inti;
  int Dex;
  String weapon;

  battleMage({
    this.name = 'Dhummie',
    this.Inti = 87,
    this.Dex = 56,
    this.weapon = 'Glaive Arcana',
  });

  // Public method called by container
  void Wounding() {
    print('Battle Mage $name closes the distance with intent to mangle with $weapon.');
  }

  void manaBolt() {
    print('Battle Mage $name casts a bolt of mana with $weapon!');
  }

  void Bluehail_Fusillade() {
    print('Battle Mage $name casts forth a hail of energy! Affecting multiple enemies at once!');
  }

  // Public method called by container
  void greatSmite(String unit) {
    print('Battle Mage $name hath smitten $unit! A searing flash envelops them.');
  }

  // Additional method for rest sequence
  void poisedVigil() {
    print('Battle Mage $name loosens yet remains vigilant.');
  }

  // Getter for char status
  String get status => '$name: $Inti INT, $Dex DEX';
}
