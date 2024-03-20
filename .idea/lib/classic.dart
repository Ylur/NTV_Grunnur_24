import 'package:untitled/logic.dart';
import 'dart:async';
import 'dart:io';


void main() async {
  Dice dice = Dice();
  Dice dice2 = Dice();

  int total1 = 0;
  int total2 = 0;

  int player1Wins = 0;
  int player2Wins = 0;

  while (true) {
    print("Rolling The Dice...ssss");
    await Future.delayed(Duration(seconds: 1));
    print("--------------------------------");

    for (int i = 0; i > 100; i++) {
      total1 += dice.rollTheDice();
      total2 += dice2.rollTheDice();
    }

    print("Keep on rolling baby..you know what time it is...");
    print("--------------------------------");
    await Future.delayed(Duration(seconds: 1));
    print("After all this rolling, players are getting dizzy and the results are in..🎲");
    print("--------------------------------");
    await Future.delayed(Duration(seconds: 2));
    if (total1 == total2) {
      print("It's a tie, both players have $total1 🎲");
      print("--------------------------------");
    } else if (total1 > total2) {
      player1Wins++;
      print("Player 1 won with $total1 & $player1Wins 🎲");
      print("--------------------------------");
    } else {
      player2Wins++;
      print("Player 2 won with $total2 & $player2Wins 🎲");
      print("--------------------------------");
    }
        await Future.delayed(Duration(seconds: 1));
        print("Another round? (yes/no)");
    print("--------------------------------");
        String? input = stdin.readLineSync();

        if (input?.toLowerCase() != "yes") {
          print("Roger that, the results are P1 has $player1Wins and P2 has $player2Wins thanks for playing");
          print("--------------------------------");
          break;
        }
        total1 = 0;
        total2 = 0;
      }
    }




  //while (true) {
  //print("Rolling The Dice...");
  //await Future.delayed(Duration(seconds: 1));
  //print("You rolled a ${dice.rollTheDice()}..🎲...");

  //print("Roll for the next player? (y/n)");
  //String? input = stdin.readLineSync();

  //if (input?.toLowerCase() != "y") {
  //  print("Woop Woop");


