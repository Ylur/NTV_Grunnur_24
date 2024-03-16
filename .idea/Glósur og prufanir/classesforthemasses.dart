import 'dart:io';
//classes for the masses

void main() {

  Person p1 = Person();
  p1.showData();

  //add data - verður að vera í röð ef þetta er allt í einu
 // p1.addData("John", "Male", 35);
  // hér þarf ekki að vera röð afþví þetta er eitt í einu
  p1.name = "Ingi";
  p1.age = 34;
  p1.sex = "Male";
  p1.showData();
  //Person p2 = Person("Nína", "Female", 33);
  //p2.showData();
}

class Person{

  String? name, sex;
  int? age;

  //method
  void addData(String name, sex, int age){
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