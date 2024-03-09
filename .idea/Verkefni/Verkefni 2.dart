import "dart:io";
import "dart:async";

void main() async {
  List<String> menu = ["hamburger", "fries", "Combo meal"];
  List<int> prices = [1500, 1200, 1800];
  List<String> topping = ["cheese", "bacon", "tomato"];
  List<int> extraPrices = [200, 300, 150];

  print("Welcome to T.Burgers");
  print("Would you like to see the menu? (yes/no)");

  await Future.delayed(Duration(seconds: 1));
  print("today Junior");

  String? userInput = stdin.readLineSync();

  if (userInput?.toLowerCase() == 'yes') {
    for (int i = 0; i < menu.length; i++) {
      print("${i + 1}. ${menu[i]} - ${prices[i]} kr");
    }
  } else if (userInput?.toLowerCase() == 'no') {
    print("Alright #sad");
    return;
  }

  print("Enter the number of the item you want to order:");
  String? orderInput = stdin.readLineSync();
  int? choice = int.tryParse(orderInput ?? '');

  if (choice != null && choice >= 1 && choice <= menu.length) {
    print("You are ordering ${menu[choice - 1]}.");

    int totalCost = prices[choice - 1];
    List<String> selectedExtras = [];

    print("Do you want to add extras? (yes/no)");
    String? extraInput = stdin.readLineSync()?.toLowerCase();

    if (extraInput == 'yes') {
      bool addingExtras = true;
      while (addingExtras) {
        print("Available extras:");
        for (int i = 0; i < topping.length; i++) {
          print("${i + 1}. ${topping[i]} - ${extraPrices[i]} kr");
        }
        print(
            "Enter the number of the extra you want to add (or '0' to finish):");
        String? extraChoiceInput = stdin.readLineSync();

        if (extraChoiceInput != null && extraChoiceInput.startsWith('+')) {
          int extraIndex = int.tryParse(extraChoiceInput.substring(1)) ?? 0;
          if (extraIndex >= 1 && extraIndex <= topping.length) {
            selectedExtras.add(topping[extraIndex - 1]);
            totalCost += extraPrices[extraIndex - 1];
          }
        } else {
          int? extraChoice = int.tryParse(extraChoiceInput ?? '');

          if (extraChoice != null &&
              extraChoice >= 1 &&
              extraChoice <= topping.length) {
            selectedExtras.add(topping[extraChoice - 1]);
            totalCost += extraPrices[extraChoice - 1];
          } else if (extraChoice == 0) {
            addingExtras = false;
          } else {
            print(
                "Invalid choice. Please select a number between 1 and ${topping.length} or '0' to finish.");
          }
        }
      }
    } else if (extraInput == 'no') {
      print("Alright");
    } else {
      print("Enjoy staring!");
    }
    print("Your selected extras are: $selectedExtras");

    print("Do you want to remove any extras? (yes/no)");
    String? removeExtraInput = stdin.readLineSync()?.toLowerCase();

    if (removeExtraInput == 'yes' && selectedExtras.isNotEmpty) {
      print("Which extra do you want to remove?");
      for (int i = 0; i < selectedExtras.length; i++) {
        print("${i + 1}. ${selectedExtras[i]}");
      }
      print("Enter the number of the extra you want to remove:");
      String? removeChoiceInput = stdin.readLineSync();
      int? removeChoice = int.tryParse(removeChoiceInput ?? '');

      if (removeChoice != null &&
          removeChoice >= 1 &&
          removeChoice <= selectedExtras.length) {
        totalCost -= extraPrices[topping.indexOf(selectedExtras[removeChoice - 1])];
        selectedExtras.removeAt(removeChoice - 1);
      } else {
        print("Invalid choice. Please select a valid number.");
      }
    }

    print("Total cost for your order: $totalCost kr");

    print("Anything else? (yes/no)");
    String? anythingElseInput = stdin.readLineSync()?.toLowerCase();

    if (anythingElseInput == 'yes') {
      print("Menu options:");
      for (int i = 0; i < menu.length; i++) {
        print("${i + 1}. ${menu[i]} - ${prices[i]} kr");
      }
    } else if (anythingElseInput == 'no') {
      print("That will be $totalCost kr for ${menu[choice - 1]}");
      print("Thank you, come again!");
      await Future.delayed(Duration(seconds: 2));
      print("áttu license í Intellj?");
    }
  }
}