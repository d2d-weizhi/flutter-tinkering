class Employee {
  void salary() {
    print("Employee salary is \$3000.");
  }
}

class Manager extends Employee {
  @override
  void salary() {
    print("Manager salary is \$4000.");
  }
}

class Developer extends Employee {
  @override
  void salary() {
    print("Developer salary is \$5000.");
  }
}

void main() {
  Manager manager = Manager();
  Developer developer = Developer();

  manager.salary();
  developer.salary();
}