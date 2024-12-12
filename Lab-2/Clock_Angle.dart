// WAP to calculate the angle between the hour and minute hands of a clock, where the hours
// and minutes are taken from the user. Example: Input: hours = 3, minutes = 15, Output: 7.5
// (angle between the hands is 7.5 degrees).


import 'dart:io';

void main(){
  print("Enter Hours : ");
  int hours = int.parse(stdin.readLineSync()!);

  print("Enter Minutes : ");
  int minutes = int.parse(stdin.readLineSync()!);

  int minAngle = minutes * 6;

  double hrAngle = ((hours%12) * 30  + (minutes/2));

  double angle = (hrAngle - minAngle).abs();

  if(angle > 180){
    print("Angel is : ${360-angle}");
  }else{
    print("Angel is : $angle");
  }

}