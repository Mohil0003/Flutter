import 'dart:io';

void main (){
  List<int> a = [];
  List<int> b = [];
  List<int> common = [];

  print("Enter First List : ");
  for(int i=0 ; i<5 ; i++){
    a.add(int.parse(stdin.readLineSync()!));
  }

  print("Enter Second List : ");
  for(int i=0 ; i<5 ; i++){
    b.add(int.parse(stdin.readLineSync()!));
  }

  for(int i=0 ; i<5 ; i++){
    if(b.contains(a[i])){
      if(common.contains(a[i])) {

      }else{  
        common.add(a[i]);
      }
    }
  }

  print("Common Elements :");
  print(common);
}