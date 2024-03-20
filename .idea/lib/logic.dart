import "dart:math";

String areYouHere() {
return "bonjour a tous";

}
class Dice {
  int sides;

  Dice({this.sides = 6});


  int rollTheDice() {
    var random = Random();
    return random.nextInt(sides) + 1;
  }
}
