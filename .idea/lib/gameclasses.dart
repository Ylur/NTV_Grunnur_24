import 'dart:math';

void sayHello() {
  print("Hello");
}

class footballPlayer {
  int id;
  String firstName;
  String lastName;
  position playerpos;
  int squadNumber;
  int goalsScored;


  footballPlayer({

    required this.id,
    required this.firstName,
    required this.lastName,
    required this.playerpos,
    required this.squadNumber,
    this.goalsScored = 0
  });

  
  String getname() {
    return "${firstName.substring(0, 1)}. ${lastName}";
  }

  void showplayerStats() {
  print(this.goalsScored);
  print("________________");

  }
}

class position {
  int id;
  String name;
  int scoreOdds;

  position({
    required this.id,
    required this.name,
    required this.scoreOdds
  });

}

class footballTeam {
  int id;
  String name;
  String league;
  String country;
  List<footballPlayer> players;

  footballTeam({
    required this.id,
    required this.name,
    required this.league,
    required this.country,
    required this.players
  });

  void showTeam() {
    print("The ${this.name} Lineup");
    this.players.forEach((element){
      print("${element.squadNumber} - ${element.firstName} ${element.lastName}");
    });
  }
}


class footballGame {
  footballTeam homeTeam;
  footballTeam awayTeam;
  int homeScore;
  int awayScore;
  int time;

  footballGame({
    required this.homeTeam,
    required this.awayTeam,
    this.homeScore = 0,
    this.awayScore = 0,
    this.time = 0
  });

  void showLineUp(){
    homeTeam.showTeam();
    awayTeam.showTeam();
  }

  void showScore() {
    print("${this.time}: ${this.homeTeam.name} - ${this.homeScore}:${this.awayScore} -  ${this.awayTeam.name}");
  }

  void playGame(int minute) {
    this.time = minute;
    showScore();
    var random = Random();
    int randomNumb1 = random.nextInt(11);
    int randomNumb2 = random.nextInt(11);
    if (randomNumb1 == randomNumb2) {
      if (randomNumb1 > 6) {
        bool didHeScore = whoScored(homeTeam.players, randomNumb1);
        if (didHeScore) {
          this.homeScore++;
        }
      } else {
        bool didHeScore = whoScored(awayTeam.players, randomNumb1);
        if (didHeScore) {
          this.awayScore++;
        }
      }
    }
  }
  bool whoScored(List<footballPlayer> tempPlayers, int numb) {
    bool results = false;
    var random = Random();
    int randomNumb1 = random.nextInt(tempPlayers[numb].playerpos.scoreOdds);
    int randomNumb2 = random.nextInt(tempPlayers[numb].playerpos.scoreOdds);
    if(randomNumb1 == randomNumb2) {
      print("Goal for player ${tempPlayers[numb].getname()}");
      results = true;
    } else {
    print("HUGE chance missed by ${tempPlayers[numb].getname()}");
    }
    return results = true;
  }
}