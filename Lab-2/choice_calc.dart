// WAP to perform Addition, Subtraction, Multiplication, Division based on user choice using if,
// if..else..if, & switch.



import 'dart:io';
void main(){
  print("Enter First Number : ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter Second Number : ");
  int num2 = int.parse(stdin.readLineSync()!);
  print("1 for Addition.");
  print("2 for Subtraction.");
  print("3 for Multiplication.");
  print("4 for Division.");
  int x = int.parse(stdin.readLineSync()!);
  if(x==1){
    print("Addition of Two Numbers is : ");
    stdout.write(num1+num2);
  }else if(x==2){
    print("Subtraction of Two Numbers is : ");
    stdout.write(num1-num2);
  }else if(x==3){
    print("Multiplication of Two Numbers is : ");
    stdout.write(num1*num2);
  }else if(x==4){
    print("Division of Two Numbers is : ");
    stdout.write(num1/num2);
  }else {
    print("Invalid Output");
  }
}