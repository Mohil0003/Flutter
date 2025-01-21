import 'dart:io';

int isPrime(int n){
  int count =0;
  for(int i=2 ; i<=(n/2) ; i++){
    if(n%i==0){
      count++;
    }
  }
  if(count==0){
    return 1;
  }else{
    return 0;
  }
}


void main(){
  print("Enter Number : ");
  int num = int.parse(stdin.readLineSync()!);

  int ans = isPrime(num);
  
  if(ans == 1){
    print("Prime Number ");
  }else{
    print("Non Prime Number ");
  }
}