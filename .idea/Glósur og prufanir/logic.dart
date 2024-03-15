import 'dart:io';
import "dart:math";

void main() {

// if, if/else, if else if
  Random random = new Random();
  int randomNumber = random.nextInt(10); // from 0 to 9 included
  print("Generated Random Number Between 0 to 9: $randomNumber");

if(randomNumber == 5) {
  print("its a me, five");
}
else if(randomNumber == 3){
print("the number is 3");

}
else {
print("The number is $randomNumber");
}
}