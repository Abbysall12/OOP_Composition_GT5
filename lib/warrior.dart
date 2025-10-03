// lib/warrior.dart
// Warrior part class - Member 2 implementation
// A melee fighter specializing in direct combat and defense

class Warrior {
  final String name;
  int health;
  int strength;
  String weapon;
  String specialSkill;

  Warrior({
    this.name = 'DARK Knight',
    this.health = 10000,
    this.strength = 5000,
    this.weapon = 'YAMATOSWORD',
    this.specialSkill = 'Judgment Cut',
  });

  // Public method called by container
  void attack() {
    print('$name Warrior attacks with $weapon for ${strength} damage!');
    print('$name Warrior unleashes special skill: $specialSkill!');
  }

  // Public method called by container
  void defend() {
    print('$name Warrior raises shield and defends the party!');
  }

  // Additional method for rest sequence
  void rest() {
    health = (health + 20).clamp(0, 100);
    print('$name Warrior rests and recovers health to $health HP');
  }

  // Getter for health status
  String get status => '$name: $health HP, $strength STR';
}
