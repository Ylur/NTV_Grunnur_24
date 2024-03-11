void sayHello() {
print("hello");

}


class footballPlayer {
int id;
String firstName;
String lastName;
String playerpos;
int squadNumber;


footballPlayer({required this.id, required this.firstName, required this.lastName, required this.playerpos, required this.squadNumber});

}

class postition{
int id;
String name;
postition({required this.id, required this.name});

}

class footballTeam {
int id;
String name;
String league;
String country;
List<footballPLayers> players;

footballTeam({required this.id, required this.name, required this.league, required this.country, required this.players});

}