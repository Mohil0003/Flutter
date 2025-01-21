import 'dart:io';

void main(){
  List<int> num = [];
  print("Enter 5 number : ");
  for(int i=0 ; i<5 ; i++){
    num.add(int.parse(stdin.readLineSync()!));
  }

  print("---------------");

  num.sort();

  print(num);
}