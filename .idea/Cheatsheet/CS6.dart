// This is a function to get the lists for printing.
//  getList(products){
//   for(String shoppingList in products){
//       print(shoppingList);
//     }
//  }

// import 'package:untitled/methods.dart';

void main(){

  // List products = ["Banana", "Orange Juice", "Frozen Pizza", "Instant ramen", "Redbull"];
  // getList(products);
  // print("---------------------------");
  // print("---------------------------");
  // print("---------------------------");

  // print("You're throwing a party, You need to add more items to your shopping list!");


  // print("------------Adding in First---------------");
  // print("---------------------------");
  // products.insert(0, "Mangos");
  // getList(products);

  // print("------------Adding in Middle---------------");
  // print("---------------------------");
  // products.insert(4, "Doritos");
  // getList(products);

  // print("------------Adding in End---------------");
  // print("---------------------------");
  // products.add("Doritos Salsa");
  // getList(products);

  // print("------------Removing Last Item---------------");
  // print("---------------------------");
  // products.removeLast();
  // getList(products);

  // print("------------Sorting Item---------------");
  // print("---------------------------");
  // products.sort();
  // getList(products);


  // Create a function that returns a message with the name and age of a student.
  // This should be a message that returns a String.
  // This takes a String name and Int age.

  callStudent("Olafur", 24);
  printing(callStudent("Olafur", 24));


}

String callStudent(String studentName, int studentAge){
  String studentCall = "$studentName is $studentAge years old.";
  return studentCall;
}

void printing(prenta){
  print(prenta);
}