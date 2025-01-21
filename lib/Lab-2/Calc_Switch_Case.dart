// WAP to make a Simple Calculator using switch...case



import 'dart:io';

void main() {

  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);


  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);


  print("Enter the operator (+, -, *, /):");
  String operator = stdin.readLineSync()!;

  double result;


  switch (operator) {
    case '+':
      result = num1 + num2;
      print("The result is: $result");
      break;

    case '-':
      result = num1 - num2;
      print("The result is: $result");
      break;

    case '*':
      result = num1 * num2;
      print("The result is: $result");
      break;

    case '/':
      if (num2 != 0) {
        result = num1 / num2;
        print("The result is: $result");
      } else {
        print("Error: Division by zero is not allowed.");
      }
      break;

    default:
      print("Invalid operator entered.");
  }
}