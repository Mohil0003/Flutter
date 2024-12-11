// WAP of Following : Body Mass Index (BMI) is measure of health on weight. It can be calculated by taking your
// weight in kilograms and dividing by square of your height in meters. Write a program that
// prompts the user to enter a weight in pounds and height in inches and display the BMI.
// Note: 1 pound=.45359237 Kg and 1 inch=0.0254 meters.


import 'dart:io';

void main (){
  print("Enter weight in pounds : ");
  double pound = double.parse(stdin.readLineSync()!);

  print("Enter height in inches : ");
  double inch = double.parse(stdin.readLineSync()!);

  double kg = pound*0.45359237;
  double meter = inch*0.0254;

  double ans = kg/(meter*meter);
  
  print("BMI is : $ans");
  

}