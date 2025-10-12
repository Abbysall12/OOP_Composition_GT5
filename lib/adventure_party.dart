// lib/adventure_party.dart
// Container class - Member 1 implementation
// An RPG adventure party that coordinates different character classes
//pls import the classes here
import 'warrior.dart';
import 'rogue.dart';
import 'battleMage.dart';

class AdventureParty {
  final String partyName;
  // Composition part: a Warrior provided by another member
  final Warrior warrior;
  // Composition part: a Rogue provided by another member
  final Rogue rogue;
  // Composition part: a Battle Mage provided by another member
  final battleMage battlemage;

  AdventureParty({
    this.partyName = 'The Brave Adventurers',
    // constructor injection of parts (composition)
    required this.warrior,
    required this.rogue,
    required this.battlemage,
  });

  // Delegated action 1 - Combat sequence
  void engageInCombat() {
    print('[Party] $partyName Engaging in combat!');
    // Delegate combat actions to the Warrior part
    print('[Party] Delegating attack to Warrior...');
    warrior.attack(); // delegated
    print('[Party] Delegating defend to Warrior...');
    warrior.defend(); // delegated
    // Delegate range support
    print('[Party] Delegating range support to Battle Mage');
    battlemage.manaBolt();
    battlemage.greatSmite('Wight');
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
    print('[Party] Battle Mage lights the way as it traverses the winding corridors, resting afterwards.');
    battlemage.poisedVigil();
    // Delegate stealth actions to the Rogue part
    print('[Party] Rogue uses stealth to scout ahead...');
    rogue.hide(); // delegated
    print('[Party] Dungeon exploration complete!\n');
  }

  // Delegated action 3 - Rest sequence
  void takeRest() {
    print('[Party] $partyName took a well-deserved rest...');
    // Delegate rest to the Warrior so the part updates its state
    warrior.rest(); // delegated
    battlemage.poisedVigil();
    rogue.hide();
    print('[Party] Party is refreshed and ready for adventure!\n');
  }

  // Delegated action 4 - Event, Monster Horde
  void fendHorde_eventSkip() {
    print('[System] Passed MP Check! (Unit checked: $battlemage)');
    print('[Party] $partyName faces a monster horde!');
    print('[Party] Battle Mage conceived an idea most ingenius!');
    print('[Party] Battle Mage uses vast amounts of mana to cast a powerful spell!');
    battlemage.Bluehail_Fusillade();
    print('[System] The monsters are caught in flames as they are doused by a ravenous blueflame!');
    print('[System] The monsters flee from the site!');
    print('[Party] Battle Mage is exhausted.');
    print('[Party] Event passed!');

  }

  // Delegated action 5 - Stealth sequence
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
