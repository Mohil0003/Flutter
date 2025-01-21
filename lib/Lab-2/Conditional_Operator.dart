// WAP to find out largest number from given 3 numbers using conditional operator.



import 'dart:io';

void main(){
  print("Enter First Number : ");
  int a= int.parse(stdin.readLineSync()!);
  print("Enter Second Number : ");
  int b= int.parse(stdin.readLineSync()!);
  print("Enter Third Number : ");
  int c= int.parse(stdin.readLineSync()!);

  int ans = (a > b && a > c) ? a : (b > c ? b : c);

  print("Largest Nunber is : $ans");
}