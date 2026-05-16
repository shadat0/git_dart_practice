import 'private_members.dart';


void main() {
  print("---------------------------------------------------------- 02");
  //practicing encapsulation and private members (02)
  Confidential secret = Confidential(42);
  // secret._secretNumber = 100;  | direct access to private variable is not allowed
  secret.secretNumber = 100;
  print('The secret number is: ${secret.secretNumber}'); 


  //practicing static variables and methods (03)
  print("---------------------------------------------------------- 03");
  Student student1 = Student();
  student1.addStudent('Alice', 20);
  Student student2 = Student();
  student2.addStudent('Bob', 22);
  Student.displayStudentCount();


//practicing factory constructors (04)
print("---------------------------------------------------------- 04");
  Ex_student studentA = Ex_student.create('Charlie');
  Ex_student studentB = Ex_student.create('Charlie');
  print(studentA == studentB); // true, both references point to the same instance
  print('Total students created: ${Ex_student.totalStudents}'); // Total students created: 1



//practicing singleton pattern using factory constructor (05+06)
print("---------------------------------------------------------- 05, 06");
  BankSystem bank1 = BankSystem();
  BankSystem bank2 = BankSystem();
  print(bank1 == bank2); // true, both references point to the same instance

  bank1.deposit(1000);
  bank2.deposit(500);
  bank1.checkReserve(); // Current reserve: 1500
  bank2.checkReserve(); // Current reserve: 1500

//practicing extension methods (07)
print("---------------------------------------------------------- 07");
  print('hello world'.Ucaseall()); // HELLO WORLD
  print(4.iseven()); // true



//operator overloading (==) and toString() to print meaning full output [08]
print("---------------------------------------------------------- 08,09");
newStudent n1 = newStudent("Rafiq", 1001);
newStudent n2 = newStudent("karim", 1002);

// [09] copy constructor in action : copying n1 values to create n3 object
newStudent n3 = newStudent.copy(n1); 

print(n1);//toString() in action
print(n2);
print(n3);

print(n1==n2); //comparing objects using ==
print(n1==n3);



//class composition practice (10)
print("---------------------------------------------------------- 10");
Address a1 = Address("Mirsarai", "DH-Ctg highway", 9442464286);
Employee e1 =Employee("Ramiz", a1);
e1.displayEmployeeInfo();
}//main function ends here



//custom class starts from here
//static variables and methods
class Student {
  String? name;
  int? age;
  static int studentCount = 0;

  addStudent(String name, int age) {
    this.name = name;
    this.age = age;
    studentCount++;
  }

  static void displayStudentCount() {
    print('Total students: $studentCount');
  }
}  

// factory constructors (04)
class Ex_student {
  String name;
  Ex_student(this.name);

  static final List<Ex_student> _students = [];

  static int get totalStudents => _students.length;

  factory Ex_student.create(String name) {
    if (_students.any((s) => s.name == name)) { // check if a student with the same name already exists
      return _students.firstWhere((s) => s.name == name); // return the existing student
    } else {
      final student = Ex_student(name);
      _students.add(student);
      return student;
    }
  }
}


//singleton pattern using factory constructor [bankreserve example] + mixin logger
mixin Logger {
  void log(String message) {
    print('LOG: $message');
  }
}

class BankSystem with Logger{
  static final BankSystem _instance = BankSystem._internal(); // private constructor
  double reserve = 0; // initial reserve

  factory BankSystem() { // factory constructor
    return _instance;
  }

  BankSystem._internal(); 

  void deposit(double amount) {
    reserve += amount;
    log('Deposited: $amount'); // using mixin to log the deposit action
  }

  void checkReserve() {
    log('Current reserve: $reserve');
  }

}


//couple examples of extention methods (07)
extension StringExtensions on String {
  String Ucaseall() {
    return toUpperCase();
  }
  String Lcaseall() {
    return toLowerCase();
  }
}

extension IntExtensions on int {
  bool iseven() {
    return this % 2 == 0;
  }
  bool isodd() {
    return this % 2 != 0;
  }
}


// Operator overloading (== / toString()) to compare objects + copy constructor
class newStudent{
  String name;
  int id;

  newStudent(this.name, this.id);
  newStudent.copy(newStudent other) : name = other.name, id = other.id; //squeezing a copy constructor

  @override
  bool operator ==(Object other){
    return other is newStudent && name == other.name && id == other.id; // comparing two objects
  }

  @override
  int get hashCode => Object.hash(name,id); // when overloading == dart expects hashcode matching
  @override
  String toString(){
    return "newStudent(name: $name, id: $id)"; //to get meaning full output
  }

  

}


//dart class composition
class Address{
  String area;
  String street;
  int phone;

  Address(this.area, this.street, this.phone);

  //getting formatted address using toString()
  @override
  String toString(){
    return "$street, $area, $phone";
  }
  }

class Employee{
  String name;
  Address address;

  Employee(this.name, this.address);

  void displayEmployeeInfo(){
    print('{Name: $name, Address:$address}');
  }
}