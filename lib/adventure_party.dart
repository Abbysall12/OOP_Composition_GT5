// lib/adventure_party.dart
// Container class - Member 1 implementation
// An RPG adventure party that coordinates different character classes

import 'warrior.dart';
import 'mage.dart';
import 'rogue.dart';

class AdventureParty {
  final String partyName;
  final Warrior warrior; // part provided by Member 2
  final Mage mage; // part provided by Member 3
  final Rogue rogue; // part provided by Member 4

  AdventureParty({
    this.partyName = 'The Brave Adventurers',
    required this.warrior,
    required this.mage,
    required this.rogue,
  });

  // Delegated action 1 - Combat sequence
  void engageInCombat() {
    print('$partyName Engaging in combat!');
    warrior.attack(); // delegate to Warrior
    mage.castSpell('Fireball'); // delegate to Mage
    rogue.sneakAttack(); // delegate to Rogue
    print('$partyName Combat sequence complete!\n');
  }

  // Delegated action 2 - Exploration sequence
  void exploreDungeon() {
    print('$partyName Exploring the dark dungeon...');
    rogue.steal('Ancient Artifact'); // delegate to Rogue
    mage.heal(warrior.name); // delegate to Mage
    warrior.defend(); // delegate to Warrior
    print('$partyName Dungeon exploration complete!\n');
  }

  // Delegated action 3 - Rest sequence
  void takeRest() {
    print('$partyName Taking a well-deserved rest...');
    mage.meditate(); // delegate to Mage
    warrior.rest(); // delegate to Warrior
    rogue.hide(); // delegate to Rogue
    print('$partyName Party is refreshed and ready for adventure!\n');
  }
}
