import 'dart:io';

void main(){
  print("Enter Number : ");
  int num = int.parse(stdin.readLineSync()!);
  int sum=0;
  while (num != 0){
    int x = num%10;
    sum=sum*10 + x;
    num = num~/10;
  }
  stdout.write("Reverse Number is : $sum");
}