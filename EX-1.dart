enum Skill { FLUTTER, DART, OTHER }


class Address {
  final String _street;
  final String _city;
  final String _zipCode;
  Address(this._street, this._city, this._zipCode);
  String get street => _street;
  String get city => _city;
  String get zipCode => _zipCode;
}
// Employee class 
class Employee {
  final String _name;
  final List<Skill> _skills;
  final Address _address;
  final int _yearsOfExperience;
  Employee(this._name, this._skills, this._address, this._yearsOfExperience);
  // Named constructor
  Employee.mobileDeveloper(String name, Address address, int yearsOfExperience)
    : _name = name,
      _address = address,
      _yearsOfExperience = yearsOfExperience,
      _skills = [Skill.FLUTTER, Skill.DART];
  // Getters
  String get name => _name;
  List<Skill> get skills => _skills;
  Address get address => _address;
  int get yearsOfExperience => _yearsOfExperience;
  // Salary calculation
  double computeSalary() {
    double salary = 40000;

    salary += _yearsOfExperience * 2000;

    for (var s in _skills) {
      if (s == Skill.FLUTTER) {
        salary += 5000;
      } else if (s == Skill.DART) {
        salary += 3000;
      } else {
        salary += 1000;
      }
    }
    return salary;
  }
  // Print details
  void printDetails() {
    print("Name: $_name");
    print("Skills: $_skills");
    print("Address: ${_address.street}, ${_address.city}, ${_address.zipCode}");
    print("Experience: $_yearsOfExperience years");
    print("Salary: \$${computeSalary()}");
  }
}
// Main
void main() {
  Address addr1 = Address("178B", "Phnom Penh", "12000");
  Employee emp1 = Employee.mobileDeveloper("Sokea", addr1, 5);
  emp1.printDetails();
  Address addr2 = Address("221A", "Tokyo", "10001");
  Employee emp2 = Employee("Ronan", [Skill.OTHER], addr2, 2);
  emp2.printDetails();
}




