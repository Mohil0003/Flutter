// WAP to check whether the given number is positive or negative.



import 'dart:io';
void main(){
  print("Enter Number : ");
  int n = int.parse(stdin.readLineSync()!);
  if(n < 0){
    print("Number is NEGATIVE ");
  }
  else{
    print("Number is POSITIVE ");
  }
}