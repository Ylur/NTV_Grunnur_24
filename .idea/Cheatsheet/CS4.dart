
import 'dart:io';
import 'dart:math';

void main () {

  // for(int i = 0; i < 6; i++)
  // {
  //   print(i);
  // }

  // print("---------------------------");


  // for(int i = 10; i > 0; i--)
  // {
  //   print(i);
  // }

  // print("---------------------------");

  // int number = 11;

  // while (number != 1) {
  //   number--;
  //   print(number);
  //   }
  //   print("Happy new year!");

  // print("---------------------------");

  // bool isActive = true;
  // print("Type something and I'll copy you!");

  // String input = stdin.readLineSync()!;
  // print("Copying: $input");

  // while(isActive){
  //   input = stdin.readLineSync()!;

  //   if(input == 'q'){
  //     break;
  //   } else {
  //     print("Copying: $input");
  //   }
  // }
  // print("Fine.. I'll stop copying you.");

  // print("---------------------------");

  // List<String> games = ["Minecraft", "Counter-Strike 2", "Helldivers 2", "Ark Survival Evolved", "Roblox", "Black Desert Online"];

  // for(String game in games){
  //   // ignore: prefer_interpolation_to_compose_strings
  //   if(game == "Helldivers 2"){
  //     print("My current favorite game is: $game");
  //   }
  // }


  // print("---------------------------");


  // bool isActive = true;
  // stdout.write("Write what toppings you want on your pizza.\n");
  // String input = stdin.readLineSync()!;
  // List toppings = [];

  // while(isActive){
  //   input = stdin.readLineSync()!;

  //   if (input == "q") {
  //     break;
  //   } else {
  //     stdout.write("Want another topping?\n");
  //     toppings.add(input);
  //   }
  // }
  // print("Here are the toppings of your chose:");
  //   for(String topp in toppings){
  //     print(topp);

  // }

  // print("---------------------------");

  // List pizzas = ["pepperoni", "Hawaiian", "Cheese", "Margarita"];

  //   for(int i=0; i < pizzas.length; i++){
  //     print("I love eating " + pizzas[i] + " pizza");
  //   }
  //   print("All pizzas are great.");


  // print("---------------------------");


  print("Enter your target daily calorie intake:");
  int targetCalories = int.parse(stdin.readLineSync()!);

  int totalCaloriesEaten = 0;

  while (true) {
    print("Enter the name of the snack (or 'quit' to exit):");
    String snackName = stdin.readLineSync()!;

    if (snackName.toLowerCase() == 'quit') {
      print("Exiting program.");
      break;
    }

    print("Enter the calorie value for $snackName:");
    int snackCalories = int.parse(stdin.readLineSync()!);

    if (totalCaloriesEaten + snackCalories > targetCalories) {
      int caloriesOver = totalCaloriesEaten + snackCalories - targetCalories;
      print("You should not eat $snackName. This will be $caloriesOver calories too many.");
    }
    else if (totalCaloriesEaten + snackCalories < targetCalories) {
      int caloriesLeft = targetCalories - (totalCaloriesEaten + snackCalories);
      print("You are welcome to eat $snackName. You can still eat $caloriesLeft calories after this.");
      totalCaloriesEaten += snackCalories;
    }
    else {
      print("You are welcome to eat $snackName. \nThis should be your last snack for the day.");
      totalCaloriesEaten += snackCalories;
      break;
    }
  }








}