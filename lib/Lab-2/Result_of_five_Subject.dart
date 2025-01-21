// WAP to read marks of five subjects. Calculate percentage and print class accordingly. Fail
// below 35, Pass Class between 35 to 45, Second Class between 45 to 60, First Class between 60
// to 70, Distinction if more than 70.



import 'dart:io';
void main(){
  print("Enter Total Marks of Each Subject : ");
  int x= int.parse(stdin.readLineSync()!);
  int totalmarks = x*5;
  print("Enter Marks of Five Subject : ");
  print("Enter First Subject Mark : ");
  int sub1 = int.parse(stdin.readLineSync()!);
  print("Enter Second Subject Mark : ");
  int sub2 = int.parse(stdin.readLineSync()!);
  print("Enter Third Subject Mark : ");
  int sub3 = int.parse(stdin.readLineSync()!);
  print("Enter Fourth Subject Mark : ");
  int sub4 = int.parse(stdin.readLineSync()!);
  print("Enter Fifth Subject Mark : ");
  int sub5 = int.parse(stdin.readLineSync()!);

  double ans = ((sub1 + sub2 + sub3 + sub4 + sub5)/totalmarks)*100;

  if(ans > 70){
    print("Result is : Distinction");
  }
  else if((ans<=70) & (ans>60)){
    print("Result is : First Class");
  }
  else if((ans<=60) & (ans>45)){
    print("Result is : Second Class");
  }
  else if((ans<=45) & (ans>35)){
    print("Result is : Pass");
  }else{
    print("Fail");
  }

}