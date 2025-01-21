import 'dart:io';

void main(){
  print("Enter Number");
  int num = int.parse(stdin.readLineSync()!);
  int i,ans=1;
  for(i = 1 ; i<=num ; i++){
    ans = ans * i;
  }
  print("Ans is : ");
  stdout.write(ans);
}