// lib/adventure_party.dart
// Container class - Member 1 implementation
// An RPG adventure party that coordinates different character classes
//pls import the classes here
import 'warrior.dart';
import 'rogue.dart';

class AdventureParty {
  final String partyName;
  // Composition part: a Warrior provided by another member
  final Warrior warrior;
  // Composition part: a Rogue provided by another member
  final Rogue rogue;

  AdventureParty({
    this.partyName = 'The Brave Adventurers',
    // constructor injection of parts (composition)
    required this.warrior,
    required this.rogue,
  });

  // Delegated action 1 - Combat sequence
  void engageInCombat() {
    print('[Party] $partyName Engaging in combat!');
    // Delegate combat actions to the Warrior part
    print('[Party] Delegating attack to Warrior...');
    warrior.attack(); // delegated
    print('[Party] Delegating defend to Warrior...');
    warrior.defend(); // delegated
    // Delegate sneak attack to the Rogue part
    print('[Party] Delegating sneak attack to Rogue...');
    rogue.sneakAttack(); // delegated
    print('[Party] Combat sequence complete!\n');
  }

  // Delegated action 2 - Exploration sequence
  void exploreDungeon() {
    print('[Party] $partyName Exploring the dark dungeon...');
    // Delegate an exploration-related action to the Warrior
    print('[Party] Warrior scouts ahead and then rests a bit...');
    warrior.rest(); // delegated
    // Delegate stealth actions to the Rogue part
    print('[Party] Rogue uses stealth to scout ahead...');
    rogue.hide(); // delegated
    print('[Party] Dungeon exploration complete!\n');
  }

  // Delegated action 3 - Rest sequence
  void takeRest() {
    print('[Party] $partyName Taking a well-deserved rest...');
    // Delegate rest to the Warrior so the part updates its state
    warrior.rest(); // delegated
    print('[Party] Party is refreshed and ready for adventure!\n');
  }

  // Delegated action 4 - Stealth sequence
  void performStealthMission() {
    print('[Party] $partyName Performing a stealth mission...');
    // Delegate stealth actions to the Rogue part
    print('[Party] Rogue scouts the area...');
    rogue.hide(); // delegated
    print('[Party] Rogue attempts to steal valuable items...');
    rogue.steal('Ancient Artifact'); // delegated
    print('[Party] Stealth mission complete!\n');
  }
}
