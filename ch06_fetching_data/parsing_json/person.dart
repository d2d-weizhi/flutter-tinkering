class Person {
  final String name;

  final int age;

  Person(this.name, this.age);

  factory Person.fromJson(Map<String, dynamic> json) {
    if (json['name'] is String && json['age'] is int) {
      return Person(json['name'], json['age']);
    } else {
      throw FormatException('Invalid JSON data format');
    }
  }
}