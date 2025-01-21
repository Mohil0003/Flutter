import 'dart:io';

class Friend {
    String? name;
     int? age;
    String? MobileNo;

    Friend(this.name , this.age , this.MobileNo);

    // Friend({required String name ,required int age , required String MobileNo}){
    //   this.name = name;
    //   this.age = age;
    //   this.MobileNo = MobileNo;
    // }
}



void main(){
  Map<String , Friend?> frdsDictionary = {};

  while (true) {
    print('Enter Friends Details : ');
    print('1. Add a Friend');
    print('2. View a  Friend Detail');
    print('3. View all Details');
    print('4. Exit');
    stdout.write('Enter your choice: ');

    String? choice = stdin.readLineSync()!;

    if(choice == '1'){
      frdsDictionary.addAll({"jon":Friend('mohil', 19 , '98989828282')});
    }

    else if(choice =='3'){
      print(frdsDictionary);
    }

}
}