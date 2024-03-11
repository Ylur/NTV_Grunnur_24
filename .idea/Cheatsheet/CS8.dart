import "package:untitled/gameclasses.dart";

void main() {
  position GK = new position(id: 1, name: "Goalkeeper", scoreOdds: 10);
  position DC = new position(id: 2, name: "Defender", scoreOdds: 7);
  position MC = new position(id: 3, name: "Midfielder", scoreOdds: 4);
  position ST = new position(id: 4, name: "Striker", scoreOdds: 2);

  // Creating instances for Newcastle United's all-time XI
  footballPlayer shearer = footballPlayer(
      id: 1,
      firstName: "Alan",
      lastName: "Shearer",
      playerpos: ST,
      squadNumber: 9 // Shearer's famous squad number
  );

  footballPlayer given = footballPlayer(
      id: 2,
      firstName: "Shay",
      lastName: "Given",
      playerpos: GK,
      squadNumber: 1
  );

  footballPlayer woodgate = footballPlayer(
      id: 3,
      firstName: "Jonathan",
      lastName: "Woodgate",
      playerpos: DC,
      squadNumber: 6
  );

  footballPlayer beardsley = footballPlayer(
      id: 4,
      firstName: "Peter",
      lastName: "Beardsley",
      playerpos: ST,
      squadNumber: 8
  );

  footballPlayer speed = footballPlayer(
      id: 5,
      firstName: "Gary",
      lastName: "Speed",
      playerpos: DC,
      squadNumber: 11
  );

  footballPlayer lee = footballPlayer(
      id: 6,
      firstName: "Robert",
      lastName: "Lee",
      playerpos: MC,
      squadNumber: 7
  );

  footballPlayer albert = footballPlayer(
      id: 7,
      firstName: "Philippe",
      lastName: "Albert",
      playerpos: DC,
      squadNumber: 27
  );

  footballPlayer ginola = footballPlayer(
      id: 8,
      firstName: "David",
      lastName: "Ginola",
      playerpos: MC,
      squadNumber: 14
  );

  footballPlayer milburn = footballPlayer(
      id: 9,
      firstName: "Jackie",
      lastName: "Milburn",
      playerpos: ST,
      squadNumber: 9 // Historically significant number, shared with Shearer in this example
  );

  footballPlayer hughes = footballPlayer(
      id: 10,
      firstName: "Hughie",
      lastName: "Gallacher",
      playerpos: ST,
      squadNumber: 10
  );

  footballPlayer keegan = footballPlayer(
      id: 11,
      firstName: "Kevin",
      lastName: "Keegan",
      playerpos: ST,
      squadNumber: 7
  );

// Assembling the Newcastle United all-time team
  footballTeam newcastle = footballTeam(
      id: 1,
      name: "Newcastle United",
      league: "EPL",
      country: "England",
      players: [shearer, given, woodgate, beardsley, speed, lee, albert, ginola, milburn, hughes, keegan]
  );

// Assuming the Position and footballPlayer classes, and the footballTeam constructor are already defined as before.

// Creating instances for Chelsea FC's all-time XI
  footballPlayer gudjohnsen = footballPlayer(
      id: 1,
      firstName: "Eidur",
      lastName: "Gudjohnsen",
      playerpos: ST, // Assuming FW is defined as Forward
      squadNumber: 22
  );

  footballPlayer cech = footballPlayer(
      id: 2,
      firstName: "Petr",
      lastName: "Cech",
      playerpos: GK, // Goalkeeper
      squadNumber: 1
  );

  footballPlayer terry = footballPlayer(
      id: 3,
      firstName: "John",
      lastName: "Terry",
      playerpos: DC, // Defender
      squadNumber: 26
  );

  footballPlayer lampard = footballPlayer(
      id: 4,
      firstName: "Frank",
      lastName: "Lampard",
      playerpos: MC, // Midfielder
      squadNumber: 8
  );

  footballPlayer drogba = footballPlayer(
      id: 5,
      firstName: "Didier",
      lastName: "Drogba",
      playerpos: ST,
      squadNumber: 11
  );

  footballPlayer zola = footballPlayer(
      id: 6,
      firstName: "Gianfranco",
      lastName: "Zola",
      playerpos: ST,
      squadNumber: 25
  );

  footballPlayer cole = footballPlayer(
      id: 7,
      firstName: "Ashley",
      lastName: "Cole",
      playerpos: DC,
      squadNumber: 3
  );

  footballPlayer makelele = footballPlayer(
      id: 8,
      firstName: "Claude",
      lastName: "Makélélé",
      playerpos: MC,
      squadNumber: 4
  );

  footballPlayer hazard = footballPlayer(
      id: 9,
      firstName: "Eden",
      lastName: "Hazard",
      playerpos: MC,
      squadNumber: 10
  );

  footballPlayer osgood = footballPlayer(
      id: 10,
      firstName: "Peter",
      lastName: "Osgood",
      playerpos: ST,
      squadNumber: 9
  );

  footballPlayer harris = footballPlayer(
      id: 11,
      firstName: "Ron",
      lastName: "Harris",
      playerpos: DC,
      squadNumber: 3 // Squad numbers are more symbolic for players from earlier eras
  );

// Assembling the Chelsea FC all-time team
  footballTeam chelsea = footballTeam(
      id: 1,
      name: "Chelsea FC",
      league: "EPL",
      country: "England",
      players: [gudjohnsen, cech, terry, lampard, drogba, zola, cole, makelele, hazard, osgood, harris]
  );

  footballGame game = new footballGame(homeTeam: chelsea, awayTeam: newcastle);
  game.showLineUp();
  for (int i = 0;i <= 90; i++) {
    game.playGame(i);
  }

}