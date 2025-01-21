// WAP to find the length of the last word in a given string, where a word is defined as a maximal
// substring consisting of non-space characters. Example: Input: s = "Hello World", Output: 5 (last
// word is "World"); Input: s = " fly me to the moon ", Output: 4 (last word is "moon").



import 'dart:io';

void main(){
  print("Enter String : ");
  var str = stdin.readLineSync()!;

  str = str.trim();// Last space will not included

  List<String> word = str.split(' ');
  print(word);
  String last =word.last;

  int len = last.length;

  print("Length of Last Word is : $len");

  
}