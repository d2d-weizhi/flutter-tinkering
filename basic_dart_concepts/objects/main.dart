// class
class Employee {
	var name = 'Tom';
	var designation = 'Developer';
}

void main() {
	// Object of employee
	var employee1 = Employee();

	print('${employee1.name}, ${employee1.designation}');

	var employee2 = Employee();

  employee2.name = "Chen Weizhi";
  employee2.designation = "Lead Front-end Dev";

	print('${employee2.name}, ${employee2.designation}');
}