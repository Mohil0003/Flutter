// WAP to find out largest number from given three numbers without using Logical Operator.



import 'dart:io';
void main(){
  print("Enter First Number : ");
  int a= int.parse(stdin.readLineSync()!);
  print("Enter Second Number : ");
  int b= int.parse(stdin.readLineSync()!);
  print("Enter Third Number : ");
  int c= int.parse(stdin.readLineSync()!);
  if(a>b){
    if(a>c){
      print("Lagest Number is : ");
      stdout.write(a);
    }else{
      print("Lagest Number is : ");
      stdout.write(c);
    }

  }else{
    if(b>c){
      print("Largest Number is : ");
      stdout.write(b);
    }else{
      print("Largest Number is : ");
      stdout.write(c);
    }
  }

}