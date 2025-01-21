// WAP to Print addition of 2 number.

import 'dart:io';

void main(){
  print("Enter First Number : ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter First Number : ");
  int num2 = int.parse(stdin.readLineSync()!);

  int sum = num1 + num2;

  print("Ansis : $sum");

}