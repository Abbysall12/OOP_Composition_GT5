// lib/adventure_party.dart
// Container class - Member 1 implementation
// An RPG adventure party that coordinates different character classes
//pls import the classes here

class AdventureParty {
  final String partyName;
  // pls add the object compositon parts here (or classes)

  AdventureParty({
    this.partyName = 'The Brave Adventurers',
    //add the constructor parameter list here
    //pls initialize the object composition parts here too
  });

  // Delegated action 1 - Combat sequence
  void engageInCombat() {
    print('$partyName Engaging in combat!');
    //add the constructor parameter list here
    //pls initialize the object composition parts here too
    print('$partyName Combat sequence complete!\n');
  }

  // Delegated action 2 - Exploration sequence
  void exploreDungeon() {
    print('$partyName Exploring the dark dungeon...');
    //add the constructor parameter list here
    //pls initialize the object composition parts here too
    print('$partyName Dungeon exploration complete!\n');
  }

  // Delegated action 3 - Rest sequence
  void takeRest() {
    print('$partyName Taking a well-deserved rest...');
    //add the constructor parameter list here
    //pls initialize the object composition parts here too
    print('$partyName Party is refreshed and ready for adventure!\n');
  }
}
