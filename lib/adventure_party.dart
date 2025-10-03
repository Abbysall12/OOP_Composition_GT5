// lib/adventure_party.dart
// Container class - Member 1 implementation
// An RPG adventure party that coordinates different character classes
//pls import the classes here
import 'warrior.dart';

class AdventureParty {
  final String partyName;
  // Composition part: a Warrior provided by another member
  final Warrior warrior;

  AdventureParty({
    this.partyName = 'The Brave Adventurers',
    // constructor injection of parts (composition)
    required this.warrior,
  });

  // Delegated action 1 - Combat sequence
  void engageInCombat() {
    print('[Party] $partyName Engaging in combat!');
    // Delegate combat actions to the Warrior part
    print('[Party] Delegating attack to Warrior...');
    warrior.attack(); // delegated
    print('[Party] Delegating defend to Warrior...');
    warrior.defend(); // delegated
    print('[Party] Combat sequence complete!\n');
  }

  // Delegated action 2 - Exploration sequence
  void exploreDungeon() {
    print('[Party] $partyName Exploring the dark dungeon...');
    // Delegate an exploration-related action to the Warrior
    print('[Party] Warrior scouts ahead and then rests a bit...');
    warrior.rest(); // delegated
    print('[Party] Dungeon exploration complete!\n');
  }

  // Delegated action 3 - Rest sequence
  void takeRest() {
    print('[Party] $partyName Taking a well-deserved rest...');
    // Delegate rest to the Warrior so the part updates its state
    warrior.rest(); // delegated
    print('[Party] Party is refreshed and ready for adventure!\n');
  }
}
