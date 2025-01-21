// WAP to find all the prime numbers within a given range [start, end]. Example: Input: start = 10,
// end = 20, Output: [11, 13, 17, 19]; Input: start = 1, end = 10, Output: [2, 3, 5, 7].

import 'dart:io';

void main(){
  print("Enter Number Range : ");

  print("Starting Number : ");
  int start = int.parse(stdin.readLineSync()!);
  print("Ending Number : ");
  int end = int.parse(stdin.readLineSync()!);



  while(start<=end){
    int count=0;
    for(int i=2 ; i<=(start/2) ; i++){
      if(start%i==0){
        count++;
      }
    }
    if(count==0){
      print(start);
    }
    start++;
  }


}