import 'dart:io';

void main() {
// key og value pörun td Ingi er key og piparostur er value
var toppings = {"Ingi":"Piparostur", "Nína":"Pepperoni"};
// prenta lista
print("${toppings}");
//sýna mitt value
print("${toppings["Ingi"]}");
// sýna values
print("${toppings.values}");
//sýna keys
print("${toppings.keys}");
//Sýna fjölda
print("${toppings.length}");
//bæta við
toppings ["Dísa"] = "banana";
print("${toppings}");
// bæta mörgu við
toppings.addAll({"Pabbi":"Rjómaostur", "Mamma":"Ananas"});
print("${toppings}");
//fjarlægja úr listanum
toppings.remove("Ingi");
print("${toppings}");
//tæma listann alveg
toppings.clear();
print("${toppings}");


}