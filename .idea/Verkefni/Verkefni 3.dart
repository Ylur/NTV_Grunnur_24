// Create an empty list to store the grocery items.
// Create a method called "addItemToList" that takes an item as input and adds it to the list.
// Create a menu system that allows the user to choose between adding an item to the list, viewing the list, or ending the program.
// If the user chooses to add an item, prompt them for the item name and call the "addItemToList" method to add it to the list.
// If the user chooses to view the list, display the contents of the list.
// If the user chooses to end the program, exit the menu loop and end the program.
// Extra challenge - Remove an item from the list
// Use Methods (functions) !!! <3

import "dart:io";
import "dart:async";

void main() async {
    List<String> groceryList = [];

    while (true) {
        print("Options");
        print("1. Add an item to the list");
        print("2. View the list");
        print("3. Remove an item from the list");
        print("4. End ");

        stdout.write("Enter a choice: ");
        String choice = stdin.readLineSync() ?? "";
        print("");

        switch (choice) {
            case "1":
                addItemToList(groceryList);
                break;

            case "2":
                viewList(groceryList);
                break;

            case "3":
                removeItemFromList(groceryList);
                break;

            case "4":
                print("Getting out of here");
                await Future.delayed(Duration(seconds: 1));
                print("áttu license í intellj?");
                return;

            default:
                print("Invalid choice, please enter a number provided in the list");
        }
    }
}

void addItemToList(List<String> list) {
    while (true) {
    stdout.write("Enter an item to add");
    String item = stdin.readLineSync()?.trim() ?? "";

    if (item.isNotEmpty) {
        list.add(item);
        print("$item added to the list.");


        stdout.write("Add more items? (yes/no): ");
        String? anythingElseInput = stdin.readLineSync()?.trim().toLowerCase();
        if (anythingElseInput != "yes") {
            break;
        }
    } else {
        print("Invalid item. Please enter a non-empty item.");

    }
    }
    }


void viewList(List<String> list) {
    if (list.isEmpty) {
        print("The list is empty.");
    } else {
        print("${list})");
        }
    }

void removeItemFromList(List<String> list) {
    if (list.isEmpty) {
        print("Nothing here my man.");
        return;
    }

    void viewList(List<String> list) {
        if (list.isEmpty) {
            print("The list is empty");
        } else {
            print("Grocery List:");
            for (int i = 0; i < list.length; i++) {
                print("${i + 1}. ${list[i]}");
            }
            print("");
        }
    }
    void removeItemFromList(List<String> list) {
        if (list.isEmpty) {
            print("The list is empty. Nothing to remove.");
            return;
        }

        viewList(list);

        stdout.write("Enter the item number to remove: ");
        int? index = int.tryParse(stdin.readLineSync()?.trim() ?? "");
        if (index != null && index >= 1 && index <= list.length) {
            String removedItem = list.removeAt(index - 1);
            print("$removedItem removed from the list.");
        } else {
            print("Invalid item number. Please enter a valid number.");
        }
    }
    }