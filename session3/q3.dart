


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
