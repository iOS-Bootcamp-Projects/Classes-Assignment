import 'dart:ffi';
import 'dart:math';
import 'dart:convert';

void main(List<String> args) {
  Deck deck = new Deck();
  deck.createCards();
}

class Card {
  Random random = new Random();
  var house = "";
  var number = 1;
  var color = "";

  Card(String house, int number, String color) {
    this.house = house;
    this.number = number;
    this.color = color;
  }

  String cardIdentity() {
    return " $house  $number  $color";
  }
}

class Deck {
  List<String> cards = [];
  var houses = ["Diamond", "Spade", "Club", "Heart"];
  var color = ["red", "black"];
  var pointer = 0;
  var cardNumber = 1;

  void createCards() {
    for (int i = 0; i < 52; i++) {
      Random random = new Random();

      Card newCard =
          new Card(houses[pointer], cardNumber, color[random.nextInt(2) + 0]);

      cardNumber += 1;
      cards.add(newCard.cardIdentity());

      if (i == 12) {
        pointer += 1;
        cardNumber = 1;
      } else if (i == 25) {
        pointer += 1;
        cardNumber = 1;
      } else if (i == 38) {
        pointer += 1;
        cardNumber = 1;
      }
    }
    print(cards);
  }
}
