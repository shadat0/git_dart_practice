void main() {
  //create class

  Person p1 = Person("Jhon", "Male", 44);
  Person p2 = Person("Nafis", "Male", 55);
  Person p3 = Person("Mary", "Female", 22);

  // print(p1.age);
  // p1.showperson();
  // p2.showperson();
  p3.showperson();
  p3.intro();
}

class Person {
  String? name, gender;
  int? age;

  //constructor

  Person(this.name, this.gender, this.age);
  //method
  void showData() => print('''
    Name = $name;
    Gender = $gender;
    Age = $age
    
    ''');

  void showperson() => print(
    "The name of this person is $name and is $gender and $age  years old",
  );
  void intro() => print(
    "Hey everyone, Meet My Friend $name and he is $gender and he is $age years old",
  );
}
