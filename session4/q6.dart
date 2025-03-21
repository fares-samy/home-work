/* Create a class `Person` with the following attributes:
- `String name`- `int? age` (nullable)
- `bool isStudent` (default is false) */



void main() {
  Person person1 = Person(name: 'Fraes', age: 20, isStudent: true);
  Person person2 = Person(name: 'Samy'); 
  person1.displayInfo();
  print('');
  person2.displayInfo();
}


class Person {
  String name;
  int? age;  
  bool isStudent; 

  Person({
    required this.name,
    this.age,
    this.isStudent = false,
  });

  void displayInfo() {
    print('Name: $name');
    print('Age: ${age ?? "Not specified"}'); 
    print('Is student: ${isStudent ? "Yes" : "No"}');
  }
}

