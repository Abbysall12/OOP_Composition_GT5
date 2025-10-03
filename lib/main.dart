// lib/main.dart
// Integration demo - Member 1 finalizes this after all parts are merged
// Demonstrates composition pattern with RPG adventure party

import 'adventure_party.dart';
import 'warrior.dart';

void main() {
  print('=== RPG Adventure Party Demo ===\n');
  // instantiate the objects here.

  // Parts created by members (Member 2 implemented Warrior)
  var warrior = Warrior(
    name: 'DARK Knight',
    health: 10000,
    strength: 5000,
    weapon: 'YAMATOSWORD',
  );

  // Container created by Member 1 with constructor injection
  var party = AdventureParty(partyName: 'The Dragon Slayers', warrior: warrior);

  // Display party status
  print('Party Status:');
  // show warrior status (accessing part's getter)
  print('[Warrior] ' + warrior.status + '\n');

  // Demonstrate delegation (multiple container actions)

  print('---Dungeon Exploration ---');
  party.exploreDungeon();

  print('---Combat Sequence ---');
  party.engageInCombat();

  print('---Rest Sequence ---');
  party.takeRest();

  print('=== Adventure Complete! ===');
}
