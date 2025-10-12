// lib/main.dart
// Integration demo - Member 1 finalizes this after all parts are merged
// Demonstrates composition pattern with RPG adventure party

// CyrusYouFngIdiot: Supposedly, there's to be a functioning stats system but-
// CyrusYouFngIdiot: I, unfortunately, procrastinated most of the time. Womp.
// CyrusYouFngIdiot: But then again, you're probably reading this from someone named-
// CyrusYouFngIdiot: "CyrusYouFngIdiot."

// import 'dart:io';

// import 'choices.dart';

import 'adventure_party.dart';
import 'battleMage.dart';
import 'warrior.dart';
import 'rogue.dart';

void main() {
  print('=== RPG Adventure Party Demo ===\n');
  // instantiate the objects here.

  // Parts created by members (Member 2 implemented Warrior, Member 3 implemented Rogue)
  var warrior = Warrior(
    name: 'DARK Knight',
    health: 10000,            // CyrusYouFngIdiot: Very balanced. :thumbs_up:
    strength: 5000,
    weapon: 'YAMATOSWORD',
  );

  var rogue = Rogue(
    name: 'Shadow',
    stealth: 90,
    agility: 88,
    weapon: 'Dual Daggers',
  );

  var battlemage = battleMage(
    name: 'Arenheim',
    Inti: 89,
    Dex: 57,
    weapon: 'Glaive Arcana',
  );

  // Container created by Member 1 with constructor injection
  var party = AdventureParty(
    partyName: 'The Dragon Slayers', 
    warrior: warrior,
    rogue: rogue,
    battlemage: battlemage,
  );

  // Display party status
  print('Party Status:');
  // show warrior status (accessing part's getter)
  print('[Warrior] ' + warrior.status);
  // show rogue status (accessing part's getter)
  print('[Rogue] ' + rogue.status + '\n');
  // show battle mage status (accessing part's getter)
  print('[Battle Mage] ' + battlemage.status + '\n');

  // Options ( TESTING )
  /*
  print("[ Available Actions ]\n  - Explore Dungeon\n   - Engage In Combat\n    - Rest");
  print("   - Fend Horde\n    - Stealth Mission");
  String? choice = stdin.readLineSync();

  // INCOMPLETE ^^^

  */

  // Demonstrate delegation (multiple container actions)

  print('---Dungeon Exploration ---');
  party.exploreDungeon();

  print('---Combat Sequence ---');
  party.engageInCombat();

  print('---Rest Sequence ---');
  party.takeRest();

  print('--- Event: Monster Horde ---');
  party.fendHorde_eventSkip();

  print('---Stealth Mission ---');
  party.performStealthMission();

  print('=== Adventure Complete! ===');

}
