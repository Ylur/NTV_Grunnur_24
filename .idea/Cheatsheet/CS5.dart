
import 'dart:io';

void main() {

  //Verkefni 1

//   double totalCost = 0.0;
//   String customerChoice;

//   print("Welcome to the Coffee Shop!");
//   print("Menu:");
//   print("1. Espresso - \$3.50");
//   print("2. Latte - \$4.00");
//   print("3. Cappuccino - \$4.50");

//   print("Please write 1, 2, 3 to select an item for your order. \nor write menu to view your options again.");

//   do{
//     customerChoice = stdin.readLineSync()!;

//     if (customerChoice.toLowerCase() == "done") {
//       break;
//     } else if (customerChoice == "1"){
//       print("Ahh the Espresso \nThat's a wise choise \nAnything else? \nOr say done if you want to finish your order.");
//       totalCost += 3.5;
//     } else if (customerChoice == "2"){
//       print("Ahh the Latte, \nThat's a wise choise \nAnything else? \nOr say done if you want to finish your order.");
//       totalCost += 4.0;
//     } else if (customerChoice == "3"){
//       print("You have chosen the Cappuccino, what a distinguished fine gentleman you are. \nAnything else? \nOr say done if you want to finish your order.");
//       totalCost += 4.5;
//     } else if (customerChoice.toLowerCase() == "menu"){
//         print("Menu:");
//         print("1. Espresso - \$3.50");
//         print("2. Latte - \$4.00");
//         print("3. Cappuccino - \$4.50");
//     } else{
//       print("We don't serve $customerChoice here, Please write menu to see our options.");
//     }
//  }while (customerChoice != "quit");

//   print(customerChoice);
//   print("Thank you for your orders! \nYour total cost is \$$totalCost\0");


  // Challenges Practice 6
  List names = ["Isak", "Robert", "Joey", "Sigga"];
  for(String friends in names){
    print(friends);
  }

  print("---------------------------");

  for(String friends in names){
    print(friends + " you suck at Overwatch 2");
  }

  print("---------------------------");

  List products = ["Banana", "Orange Juice", "Frozen Pizza", "Instant ramen", "Redbull"];
  for(String shoppingList in products){
    print(shoppingList);
  }

  print("---------------------------");

  print("${products[0]}, is no longer available, Please check the available options");
  products[0] = "Clementine";
  for(String shoppingList in products){

    print(shoppingList);
  }

  print("---------------------------");
  print("---------------------------");
  print("---------------------------");

  print("You're throwing a party, You need to add more items to your shopping list!");


  print("------------Adding in First---------------");
  print("---------------------------");
  products.insert(0, "Mangos");
  for(String shoppingList in products){
    print(shoppingList);
  }

  print("------------Adding in Middle---------------");
  print("---------------------------");
  products.insert(4, "Doritos");
  for(String shoppingList in products){
    print(shoppingList);
  }

  print("------------Adding in End---------------");
  print("---------------------------");
  products.add("Doritos Salsa");
  for(String shoppingList in products){
    print(shoppingList);
  }

  print("------------Removing Last Item---------------");
  print("---------------------------");
  products.removeLast();
  for(String shoppingList in products){
    print(shoppingList);
  }

  print("------------Sorting Item---------------");
  print("---------------------------");
  products.sort();
  for(String shoppingList in products){
    print(shoppingList);
  }
}