//part-1 : student class

class Student {
  String name;
  int rollNo;

  Student(this.name, this.rollNo);
  void displayInfo() {
    print("Name: $name, Roll No: $rollNo");
  }
}

//part-2: inheritance

class Person {
  String Pname;

  Person(this.Pname);
}

class Teacher extends Person {
  String subject;

  Teacher(String Pname, this.subject) : super(Pname);

  void displayTeacherInfo() {
    print("Name: $Pname, Subject: $subject");
  }
}

//part-3 : asbtract class (get and set method to access area)

abstract class Shape {
  double? _area;

  double get area => _area ?? 0.0;
  void set area(double value) => _area = value;

  void calculateArea();
}

//sub class to demonstrate abstract -
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  void calculateArea() {
    _area = 3.14 * radius * radius;
  }
}

void main() {
  Student s1 = Student("John", 1);
  s1.displayInfo();

  Teacher t1 = Teacher("Mr. Smith", "Math");
  t1.displayTeacherInfo();

  Circle c1 = Circle(5.0);
  c1.calculateArea();
  print("Area of circle: ${c1.area}");
}
