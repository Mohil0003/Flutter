// WAP to find percentage of 5 subject.

import 'dart:io';

void main(){
  print("Enter Total Marks for Each Subject : ");
  int x = int.parse(stdin.readLineSync()!);
  int totalmarks = x*5;
  
  print("Enter First Subject Marks : ");
  int n1 = int.parse(stdin.readLineSync()!);
  print("Enter Second Subject Marks : ");
  int n2 = int.parse(stdin.readLineSync()!);
  print("Enter Third Subject Marks : ");
  int n3 = int.parse(stdin.readLineSync()!);
  print("Enter Fourth Subject Marks : ");
  int n4 = int.parse(stdin.readLineSync()!);
  print("Enter Fifth Subject Marks : ");
  int n5 = int.parse(stdin.readLineSync()!);
  
  double res = ((n1 + n2 + n3 + n4 + n5)/totalmarks)*100;
  
  print("Result is : $res%");
}