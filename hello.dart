import 'dart:io';

void main() {
//though its hello program i would like to practice little bit of advance topics

  List<Map<String, dynamic>> products1 = [
    {
      "sku": "intel i5 12400f",
      "name": "Intel Core i5-12400F Desktop Processor",
      "price": 150.00,
      "stock": 10
    },
    {
      "sku": "amd ryzen 5 5600x",
      "name": "AMD Ryzen 5 5600X Desktop Processor",
      "price": 160.00,
      "stock": 15
    },
  ];

  List<Map<String, dynamic>> products2 = [
    {
      "sku": "nvidia rtx 3060",
      "name": "NVIDIA GeForce RTX 3060 Desktop Graphics Card",
      "price": 300.00,
      "stock": 20
    },
  ];

  //spreading the lists to a third list
  List<Map<String, dynamic>> products3 = [...products1, ...products2];
  print(products3);
}
