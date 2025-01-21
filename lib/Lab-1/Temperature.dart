// WAP to convert temperature from Fahrenheit to Celsius.

import 'dart:io';

void main(){

  print("Enter Temperature in Fahrenheit : ");
  double f =double.parse(stdin.readLineSync()!);

  double c = ((f - 32) * 5)/9;
  
  print("Temp in Celsius : $c");
}