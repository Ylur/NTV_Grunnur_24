import 'dart:math';

class UserInfo {
  // Properties declaration
  int id = getUserId();
  String name;
  late String email = generateEmail(name, company.url);
  Company company;

  // Constructor
  UserInfo({required this.name, required this.company});

  // Method to display user information
  void displayUserInfo() {
    print('User ID: $id');
    print('Name: $name');
    print('Email: $email');
    print("Company: ${company.name}");
  }
}

class Company {
  String name;
  String url;
  Company({required this.name, required this.url});
}

int getUserId(){
  Random random = Random();
  int randomNumber = random.nextInt(100);
  return randomNumber;
}

//Fornafn + Fyrstu 3 i eftirnafni.
//Millinofn ekki med
String generateEmail(String name, String url) {
  List<String> names = name.split(" ");
  String firstName = names[0];
  String lastName = names.last;
  String fullName = firstName + lastName.substring(0,3);
  String result = removeIcelandicCharacters(fullName);
  return "${result.toLowerCase()}@$url";
}

String removeIcelandicCharacters(String input) {
  // Map of Icelandic characters to their English counterparts
  Map<String, String> icelandicToEnglish = {
    'á': 'a',
    'Á': 'A',
    'é': 'e',
    'É': 'E',
    'í': 'i',
    'Í': 'I',
    'ó': 'o',
    'Ó': 'O',
    'ú': 'u',
    'Ú': 'U',
    'ý': 'y',
    'Ý': 'Y',
    'þ': 'th',
    'Þ': 'Th',
    'æ': 'ae',
    'Æ': 'Ae',
    'ö': 'o',
    'Ö': 'O',
    'ð': 'd',
    'Ð': 'D',
  };

  String result = input;

  // Replace Icelandic characters with their English counterparts
  icelandicToEnglish.forEach((icelandicChar, englishChar) {
    result = result.replaceAll(icelandicChar, englishChar);
  });

  return result;
}