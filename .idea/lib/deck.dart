import 'dart:math';

import 'card.dart';

List<Card> createShuffledDeck() {
  // Assuming you have a predefined list of cards
  List<Card> cards = [/* Your list of Card objects here */];

  // Shuffle the cards
  cards.shuffle(Random());

  return cards;
}

class Deck {
  // Declare the _cards field. It's private to this library.
  final List<Card> _cards;

  // Initialize _cards in the constructor. For example, with a shuffled deck.
  Deck() : _cards = createShuffledDeck();

  // Optionally, provide a way to access _cards safely from outside the class.
  // This could be through a method or a public getter.
  List<Card> get cards => List.unmodifiable(_cards);
}

void main() {
  Deck deck = Deck();

  // Instead of directly accessing _cards (which is private), use the public getter.
  print(deck.cards);
}
