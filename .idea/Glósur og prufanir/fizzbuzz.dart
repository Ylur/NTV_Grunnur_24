import 'dart:io';
import 'dart:math';

void main() {
//fizzbuzz
  int num = 1;

//loop = á meðan tala er undir 100 þá framkvæma x
  while (num <= 100) {
    if (num % 5 == 0 && num % 3 == 0) {
      print("$num. FizzBuzz!");

    } else if (num % 3 == 0){
      print("$num. Fizz");
    } else if (num % 5 == 0){
  print("$num.Buzz");
  }

//increment the counter
  num++;
}
}
