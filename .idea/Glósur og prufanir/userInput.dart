import 'dart:io';


void main ()  {
print("Enter a number");

//
var numb = stdin.readLineSync();
// ?? =  ef þetta er núll breyta í "x"
var numb2 = int.parse(numb ?? "0") + 10;
print( numb2 + 10);

}