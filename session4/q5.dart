/* Write a function `uniqueNames(List<String> names)` that:
- Accepts a list of names.
- Returns a Set containing only unique names.
 Call the function inside `main()` and print the result. */


void main() {
  List<String> names = ['Fares', 'Kreem', 'Mohamed', 'Zeyad', 'Hamza', 'Rashad'];
  
  Set<String> uniqueNamesSet = uniqueNames(names);
  print('Unique names: $uniqueNamesSet');
}

Set<String> uniqueNames(List<String> names) {
  return Set<String>.from(names);
}
