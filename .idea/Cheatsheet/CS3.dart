import "dart:io";
import "package:untitled/method";

void main() {
List<String> groceryList = [];

while (true) {
print("menu");
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
  return;

  case "2":
  viewList(groceryList);
  return;

  case "3":
  removeItemFromList(groceryList);
  return;

  case "4":
  print("Quitting the program");
  return;

  default:
  print("Invalid choice, please enter a number provided in the list");

      }
    }
  }

void addItemToList(List<String> list) {
stdout.write("Enter an item to add");
String item = stdin.readLineSync() ?? "";
list.add(item);
print("$item added to the list");

}

void viewlist(List<String> list) {
  if (list.isEmpty) {
    print("Nothin here");
  } else {
    print("your list");
    for (int i = 0; i < list.length; i++) {
      print("${i + 1}. ${list[i]}");
    }
  }
}
void removeItemFromList(List<String> list) {
 if (list.isEmpty) {
 print("Nothin here");
 return;
 }

 viewlist(list);
 stdout.write("Enter the number you want purged");
 int index = int.tryParse(stdin.readLineSync()?? "") ?? 0;
 if (index <1 || index > list.length) {
 print("Not happening");
 return;
 }
String removedItem = list.removedAt(index - 1);
print("$removeItem has been purrrrrged") ;
}

}
}