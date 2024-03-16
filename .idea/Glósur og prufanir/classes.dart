import 'dart:io';
//classes for the masses

void main() {

Person p1 = Person("Ingi", "Yes pls", 36);
p1.showData();
Person p2 = Person("Nína", "Female", 33);
p2.showData();
}

class Person{

  String? name, sex;
  int? age;

  //constructor
  Person(String name, sex, int age){
    this.name = name;
    this.sex = sex;
    this.age = age;
  }

  //Method
void showData(){
print("Name = $name");
print("Sex = $sex");
print("age = $age");

print("The persons name is ${name}, they are ${sex} and ${age}");
}

}