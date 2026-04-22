//practicing classes and objects, class instance, constructor, methods, properties, and functions

class Bicycle {
  String color = "Red"; // Instance variable
  static int productionSn = 0;

  //constructor
  Bicycle() {
    productionSn++;
  }
}

void main() {
  var bike1 = Bicycle();
  var bike2 = Bicycle();

  bike1.color = "Blue";

  print(bike1.color); // Output: Blue
  print(bike2.color); // Output: Red (Unchanged)
  print(Bicycle.productionSn);
}
