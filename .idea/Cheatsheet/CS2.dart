import 'dart:io';


void main() {
  String firstname = "Ingi";
  String lastname = "Haraldsson";
  print("Hæ heimur, hér er ég $firstname");
  print("hæ hér er $firstname + $lastname");


  int price = 100;
  double tax = 0.24;
  double result = (price + tax) * price;
  //forrita á ensku en skrifa sumt á ísl

  print("price + tax ");
  print(result);

  //bool er bara true eða false
  bool isTheLightOn = false;
  isTheLightOn = true;

/* svindl thing
 dynamic helloworld = "hello";
 helloWorld = "123";

 */



  String message = "Hello world";
  String firstName1 = "Ingi";
  String lastName1 = "Haraldsson";
  String fullName = "$firstName1 $lastName1";

  //spurningarmerki þýðir að þetta má vera tómt eða null

  /*
  String? name;
  print("Enter your name");
  name = stdin.readLineSync()!;
*/

  String myPhoneNumber = " 5881235";
  print("myPhoneNumber.length");
  String mySocialSecurityNumber = "240388";
  print(mySocialSecurityNumber.substring(0,2));

  //deila,reikna ofl
  double myResult;
  myResult = 12/7;
  print("res" + myResult.toString());

  print("res" + myResult.toStringAsFixed(3));

  //Dagsetningar ofl


  DateTime dt = DateTime.now();
  print("$dt");


  String name =("Ingi");
  String message2 =("Góðan daginn");
  print("$message2" "$name");

  String author =("Tiger Woods");
  String quote =("There's no sense in going to a tournament if you don't believe that you can win it.");
  print("$author once said $quote");

  String message3 = "skilaboð1";
  print("$message3");
  message3 = "breytt skilaboð";
  print("$message3");


  String message4 = "Eena, meena, mina, mo, Catch a mouse by the toe; If he squeals let him go, Eeena, meena, mina, mo.";
  String messageWithoutSpaces = message4.replaceAll(" ", "");
  print(messageWithoutSpaces);

/*
   4. Prompt a user for their full name (first name and last name)
    1. Store the users entry.
    2. Display the users entry with every letter being capitalised.
    3. Replace the first name with your name, and display it.
    4. Capitalise and display the users full name with each word having a capital
    first letter, and the other letters being lowercase.
   */
  String? firstname;
  print("Please enter your first name");
  String firstName = stdin.readLineSync()!;
  String? lastName;
  print("Please enter your last name");
  String lastName = stdin.readLineSync()!;

  String firstName = "Ingi";
  String lastName = "Haraldsson";
  print("$firstName $lastName");
  print("${firstName.substring(0,1).toUpperCase()} ${lastName.substring(0,1).toUpperCase()}");

  /*
    5. Display the following SSN on the correct Format:
      F.x. 2006892409
   */


  String SSN1 = "200689-2409";
  String SSN2 = "200689 2409";
  String SSN3 = "2 006 8924 09";

  SSN1 = SSN1.replaceAll('-', '');
  print (SSN1);
//v1
  int birthYear = 1989;
  int currentYear = 2024;
  int myResult2 = currentYear - birthYear;
  print (myResult2);
//v2
  String numb = SSN1.substring(4,6);
  int age = int.parse(numb);
  print (numb);
  print (age);
  print (2024-age-1900);

}
/*
4. Write a program that checks if a phone number is of the correct format, Use Icelandic numbers.
Example of correct Phone number is: 5526704

String TaxiPhoneNumber = "5885522";
String MyGrandMothersPhoneNumber = "552-6704";
String DominosPhoneNumber = "512345";
String NTVPhoneNumber = "+354 555 6767";
String HelpDeskPhoneNumber = "555 6767";
*/