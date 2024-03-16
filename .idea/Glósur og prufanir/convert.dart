import 'dart:io';

import 'dart:math';

void main () {
// String to Int
var a,b,c;
a = 40;
b = "1";
c = a + int.parse(b);
print("$a + $b + $c");


//String to Double
var d,e,f;
d = 40;
e = "0.1";
f = d + double.parse(e);
print("$d + $e = $f");

//int to string
var g,h,i;
g = 40;
h = "1";
i = g.toString() + h;
print("$g + $h + $i");

}