import "dart:io";
import "dart:async";

void main() async {
    List<String> groceryList = [];

    while (true) {
        print("Options");
        print("1. Add an item to the list");
        print("2. View the list");
        print("3. Remove an item from the list");
        print("4. End");

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
                print("Abort mission...");
                await Future.delayed(Duration(seconds: 1));
                print("áttu license í intellj?");
                return;

            default:
                print("Nono please enter a number provided in the list");
        }
    }
}

void addItemToList(List<String> list) {
    while (true) {
        stdout.write("Enter an item to add: ");
        String? item = stdin.readLineSync()?.trim();

        if (item != null && item.isNotEmpty) {
            list.add(item);
            print("$item added to the list.");

            stdout.write("Add more items? (yes/no): ");
            String? anythingElseInput = stdin.readLineSync()?.trim().toLowerCase();
            if (anythingElseInput != "yes") {
                break;
            }
        } else {
            print("nope, Please enter a non-empty item.");
        }
    }
}

void viewList(List<String> list) {
    print("Grocery List:");
    if (list.isEmpty) {
        print("The list is empty.");
    } else {
        for (int i = 0; i < list.length; i++) {
            print("${i + 1}. ${list[i]}");
        }
    }
}

void removeItemFromList(List<String> list) {
    if (list.isEmpty) {
        print("*crickets*.");
        return;
    }

    viewList(list);

    stdout.write("Enter the item number to remove: ");
    int? index = int.tryParse(stdin.readLineSync()?.trim() ?? "");
    if (index != null && index >= 1 && index <= list.length) {
        String removedItem = list.removeAt(index - 1);
        print("$removedItem it be gone ");
    } else {
        print("Dude...NO... Please enter a valid number.");
    }
}
