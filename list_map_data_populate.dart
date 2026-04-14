import 'dart:io';

void main() {
  List<Map<String, dynamic>> users = [
    {"name": "John", "age": 30, "email": "john@idea.om\n"},
    {"name": "Jane", "age": 25, "email": "jane@idea.om\n"},
    {"name": "Bob", "age": 35, "email": "bob@idea.om\n"},
  ];

  print("====================== break line ======================");

  print("Enter your name :");
  var newUser = stdin.readLineSync();

  print("Enter your age: ");
  var newAge = stdin.readLineSync();

  print("Enter your email: ");
  var newEmail = stdin.readLineSync();

  if (newUser != null && newAge != null && newEmail != null) {
    users.add({"name": newUser, "age": newAge, "email": newEmail});
  }

  print(users);
}
