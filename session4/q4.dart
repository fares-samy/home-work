/* Create a Dart program that:- Declares a Map<String, int> where keys are fruit names and values are their
 prices.
 - Implements a function getPrice(String fruitName) that returns the price of a
 given fruit.
 - If the fruit is not found, return -1.
 Call the function inside main() and print the result. */


void main() {

  Map<String, int> fruitPrices = {
    'Apple': 3,
    'Banana': 2,
    'Orange': 4,
    'Mango': 5,
  };

  String fruitName = 'Apple';
  int price = getPrice(fruitPrices, fruitName);
  print('The price of $fruitName is: \$${price == -1 ? "Not found" : price}');
}

int getPrice(Map<String, int> fruitPrices, String fruitName) {
  if (fruitPrices.containsKey(fruitName)) {
    return fruitPrices[fruitName]!;
  } else {
    return -1; 
  }
}
