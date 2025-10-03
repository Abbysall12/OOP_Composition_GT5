// lib/rogue.dart
// Rogue part class - Member 3 implementation
// A stealthy character specializing in sneak attacks and stealing

class Rogue {
  final String name;
  int stealth;
  int agility;
  String weapon;

  Rogue({
    this.name = 'Shadow',
    this.stealth = 90,
    this.agility = 88,
    this.weapon = 'Dual Daggers',
  });

  // Public method called by container
  void sneakAttack() {
    print(
      '$name Rogue performs a sneak attack with $weapon for critical damage!',
    );
  }

  // Public method called by container
  void steal(String item) {
    print('$name Rogue successfully steals $item with stealth level $stealth!');
  }

  // Additional method for rest sequence
  void hide() {
    print('$name Rogue hides in the shadows and observes the surroundings');
  }

  // Getter for stealth status
  String get status => '$name: $stealth STL, $agility AGI';
}
