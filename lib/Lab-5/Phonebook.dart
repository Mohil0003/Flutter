import 'dart:io';

void main() {
  Map<String, String> phonebook = {};

  while (true) {
    print('Phonebook Menu:');
    print('1. Add a contact');
    print('2. View a contact');
    print('3. View all contacts');
    print('4. Exit');
    stdout.write('Enter your choice: ');

    String? choice = stdin.readLineSync()!;

    if (choice == '1') {
      stdout.write('Enter contact name: ');
      String? name = stdin.readLineSync()!;

      stdout.write('Enter phone number: ');
      String? phoneNumber = stdin.readLineSync()!;

      if (name != null && phoneNumber != null) {
        phonebook[name] = phoneNumber;
        print('Contact added successfully!');
      }
    } else if (choice == '2') {
      stdout.write('Enter the contact name to search: ');
      String? searchName = stdin.readLineSync()!;

      if (searchName != null) {
        if (phonebook.containsKey(searchName)) {
          print('Phone number of $searchName: ${phonebook[searchName]}');
        } else {
          print('Contact not found.');
        }
      }
    } else if (choice == '3') {

      if (phonebook.isEmpty) {
        print('Phonebook is empty.');
      } else {
        print('All Contacts:');
        phonebook.forEach((name, phoneNumber) {
          print('$name: $phoneNumber');
        });
      }
    } else if (choice == '4') {
      print('Exiting phonebook...');
      break;
    } else {
      print('Invalid choice. Please try again.');
    }
  }
}
