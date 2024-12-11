// WAP to find the subarray with the largest sum from a given integer array. Example: Input: nums =
// [-2, 1, -3, 4, -1, 2, 1, -5, 4], Output: 6 (subarray [4, -1, 2, 1]).

import 'dart:io';

void main(){

  print("Enter Array Length : ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> arr = [];
  for(int i=0 ; i<n ; i++){
    arr.add(int.parse(stdin.readLineSync()!));
  }

  int sum =0;
  int maxSum=0;


  for(int i=1 ; i<arr.length ; i++){
    
    if(sum + arr[i] > arr[i]){
      sum = sum+arr[i];
    }else{
      sum = arr[i];
    }


    if(maxSum > sum ){
      maxSum = maxSum;
    }else{
      maxSum=sum;
    }


  }
  print("Array is : $arr");
  print("Largest Sum : $maxSum");
}