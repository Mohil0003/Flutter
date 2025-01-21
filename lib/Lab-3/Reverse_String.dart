import 'dart:io';

void main(){
  print("Enter String : ");
  var str = stdin.readLineSync()!;
  int i;
  var ans="";
  for(i=str.length-1;i>=0;i--){
    ans = ans + str[i];

  }
  print("Reverse String is : ");
  stdout.write(ans);
  
}