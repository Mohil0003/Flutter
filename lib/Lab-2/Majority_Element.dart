// WAP to find the majority element in a given array, where the majority element is the one that
// appears more than [n / 2] times. You may assume that the majority element always exists in
// the array. Example: Input: nums = [3, 2, 3], Output: 3; Input: nums = [2, 2, 1, 1, 1, 2, 2], Output:
// 2.


import 'dart:io';

void main (){
  print("Enter Length of Array : ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> arr = [];
  print("Enter Array : ");

  for(int i=0 ; i<n ; i++){
    arr.add(int.parse(stdin.readLineSync()!));
  }

  int num=0;
  int count=0;

  for(int i=0 ; i<n ; i++){
    if(count == 0){
      num = arr[i];
    }
    if(arr[i]==num){
      count++;
    }else{
      count--;
    }
  }

  print("Majority Element is : $num");

}