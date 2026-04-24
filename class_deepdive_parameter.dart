class Citizen {
  //named constructor

  Citizen(this.name, this.phone, {this.hasPassport}) : hasResidentID = true;
  Citizen.khareji(this.name, this.phone, this.hasPassport)
      : hasResidentID = false;

  String name;
  int phone;
  bool? hasPassport;
  bool hasResidentID;
  //method
  void displayInfo() {
    print("Name: $name");
    print("Phone: $phone");
    print("Has Passport: $hasPassport");
    print("Has Resident ID: $hasResidentID");
  }
}

void main() {
  //create an instance of Citizen
  Citizen citizen = Citizen("John", 123);
  Citizen foreign = Citizen.khareji("robina", 123,
      false); // it will require a third value, since we declared it as a non-optional parameter in the constructor
  //display the information
  citizen.displayInfo();
  foreign.displayInfo();
}
