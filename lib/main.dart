// lib/main.dart
// Integration demo - Member 1 finalizes this after all parts are merged
// Demonstrates composition pattern with RPG adventure party

import 'adventure_party.dart';
import 'warrior.dart';
import 'mage.dart';
import 'rogue.dart';

void main() {
  print('=== RPG Adventure Party Demo ===\n');

  // Parts created by Members 2, 3, 4
  var warrior = Warrior(
    name: 'Thorin Ironbeard',
    health: 100,
    strength: 85,
    weapon: 'Legendary Steel Sword',
  );

  var mage = Mage(
    name: 'Gandalf the Wise',
    mana: 80,
    intelligence: 95,
    staff: 'Staff of Power',
  );

  var rogue = Rogue(
    name: 'Shadow Whisper',
    stealth: 90,
    agility: 88,
    weapon: 'Shadow Daggers',
  );

  // Container created by Member 1 with constructor injection
  var party = AdventureParty(
    partyName: 'The Dragon Slayers',
    warrior: warrior,
    mage: mage,
    rogue: rogue,
  );

  // Display party status
  print('Party Status:');
  print('  ${warrior.status}');
  print('  ${mage.status}');
  print('  ${rogue.status}\n');

  // Demonstrate delegation (multiple container actions)

  print('---Dungeon Exploration ---');
  party.exploreDungeon();

  print('---Combat Sequence ---');
  party.engageInCombat();

  print('---Rest Sequence ---');
  party.takeRest();

  print('=== Adventure Complete! ===');
}
