import 'dart:io';

void main() {
  //printing the three options (adding product name, qty, display products, exit)
  print("1. Add product");
  print("2. Add quantity");
  print("3. Display products");
  print("4. Exit");
// demo data electronics
  List<Map<String, dynamic>> products = [
    {"name": "Laptop", "quantity": 10},
    {"name": "Mouse", "quantity": 20},
    {"name": "Keyboard", "quantity": 30},
  ];

  //taking the input from the user
  var choice = stdin.readLineSync();

  //using switch case to handle the choice
  switch (choice) {
    case "1":
      print("Enter the product name: ");
      var productName = stdin.readLineSync();
      print("Product name: $productName Entered successfully");
      break;
    case "2":
      print("Enter the quantity: ");
      var quantity = stdin.readLineSync();
      print("Quantity: $quantity Entered successfully");
      break;
    case "3":
      print("Displaying products...");
      print(products);
      break;
    case "4":
      print("Exiting...");
      break;
    default:
      print("Invalid choice");
  }
}
