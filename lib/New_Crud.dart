import 'dart:io';


void main() {
  User obj = User();
  int choice;

  do {
    print(
        "Enter 1 For Add  2 For getList  3 for Update  4 for Delete  5 for end");
    choice = int.parse(stdin.readLineSync()!);

    switch(choice){
      case 1:
        print("Enter Name: ");
        String name = stdin.readLineSync()!;
        print("Enter Age : ");
        int age = int.parse(stdin.readLineSync()!);

        obj.addUser(name:name , age:age);
        break;

      case 2:
        List<Map<String, dynamic>> userList = obj.getUserList();
        print(obj.getUserList());
        break;

      case 3:
        stdout.write('Enter Name : ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter Age : ');
        int age = int.parse(stdin.readLineSync()!);
        stdout.write('Enter Index : ');
        int index = int.parse(stdin.readLineSync()!);
        obj.updateUser(name: name, age: age,  id: index);
        break;

        case 4:
          stdout.write('Enter Index : ');
          int index = int.parse(stdin.readLineSync()!);
          obj.deleteUser(index);
          break;
    }
  }while(choice!=5);

}


class User {

  List<Map<String, dynamic>> userList = [];

  void addUser({required name, required age}) {
    Map<String, dynamic> map = {};
    map['name'] = name;
    map['age'] = age;

    userList.add(map);
  }

  List<Map<String, dynamic>> getUserList() {
    return userList;
  }
  void updateUser({required name, required age, required id}) {
    Map<String, dynamic> map = {};
    map['name'] = name;
    map['age'] = age;

    userList[id] = map;
  }
  void deleteUser(id) {
    userList.removeAt(id);
  }
}