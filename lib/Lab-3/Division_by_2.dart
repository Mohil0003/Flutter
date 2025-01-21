import 'dart:io';

void main(){
  print("Enter Number : ");
  int num = int.parse(stdin.readLineSync()!);
  if(num%2 == 0){
    if(num%3 == 0){
      stdout.write("Number is Divisible by 2 and 3");
    }else{
      stdout.write("Number is Divisible by 2 but no by 3");
    }
  }else{
    stdout.write("Number is not Divisible by 2");
  }
}