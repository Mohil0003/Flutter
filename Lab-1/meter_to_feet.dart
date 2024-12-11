// WAP that reads a number in meters, converts it to feet, and display the result.

import 'dart:io';

void main(){
  print("Enter Meters : ");
  int meter = int.parse(stdin.readLineSync()!);

  double feet = 3.28084*meter;

  print("Feet : $feet");
}