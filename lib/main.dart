// lib/main.dart
// Integration demo - Member 1 finalizes this after all parts are merged
// Demonstrates composition pattern with RPG adventure party

import 'adventure_party.dart';

void main() {
  print('=== RPG Adventure Party Demo ===\n');
  // instantiate the objects here.

  // Container created by Member 1 with constructor injection
  var party = AdventureParty(
    partyName: 'The Dragon Slayers',
    //inject the constructor parameters here
  );

  // Display party status
  print('Party Status:');
  //call the property/field to access the objects to display their status

  // Demonstrate delegation (multiple container actions)

  print('---Dungeon Exploration ---');
  party.exploreDungeon();

  print('---Combat Sequence ---');
  party.engageInCombat();

  print('---Rest Sequence ---');
  party.takeRest();

  print('=== Adventure Complete! ===');
}
