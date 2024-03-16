import 'dart:io';
import "dart:math";
import "dart:async";

void main() async {
  int min = 0;
  int max = 100;

  // Lita valmöguleikarnir ( hægt að nota fyrir hvað sem er
  List<String> Colors = ["Red", "Black"];
  print("You feeling lucky?");
  await Future.delayed(Duration(seconds: 1));
  print("Pick a number between 0 and 100:");

  // Setja inn tölu sem þú vilt giska á
  String? userInput = stdin.readLineSync();
  int userNumber;
  if (userInput != null && int.tryParse(userInput) != null) {
    userNumber = int.parse(userInput);
    if (userNumber >= min && userNumber <= max) {

      // Random litur
      int randomIndex = Random().nextInt(Colors.length);
      String selectedItem = Colors[randomIndex];
      //Random tala
      int randomnum = min + Random().nextInt((max + 1) - min);
      await Future.delayed(Duration(seconds: 4));
      print("Place your bets...");
      await Future.delayed(Duration(seconds: 4));
      print("Rolling the dice...");
      await Future.delayed(Duration(seconds: 3));
      print("The number is $randomnum and the color is: $selectedItem");
    } else {
    print("Invalid input. Please enter a numeric value.");
  }
  }
}



