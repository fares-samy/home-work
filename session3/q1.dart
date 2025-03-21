/*  Create a Dart program that takes two numbers as input and performs addition, subtraction,
 multiplication, and division using variables, arithmetic operators, and functions. Also, include
 optional parameters for different operations (e.g., addition of multiple numbers). */



import 'dart:io';

void main ()
{
  double num1;
  double num2;
  double result;
  String c;
  stdout.write("Enter num1: ");
  num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter num2: ");
  num2 = double.parse(stdin.readLineSync()!);
  print("Enter the operator: ");
  c = stdin.readLineSync()!;
  switch (c)
   {
  case '+':
  result = num1 + num2;
  print("The addition = $result");
  break;
  case '-':
  result = num1 - num2;
  print("The subtraction = $result");
  break;
  case '*':
  result = num1 * num2;
  print ("The multiplication = $result");
  break;
  case '/':
  result = num1 / num2;
  print("The division = $result");
  break;
  }
}