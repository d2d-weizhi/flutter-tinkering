void main() {
  final person1 = Person(name: "John", age: 30);

  final person2 = person1.copyWith(name: 'Bob');

  print(person1.name);
  print(person2.name);
  print(person2.age);
}

class Person {
  final String name;
  final int age;
  Person({ required this.name, required this.age });

  Person copyWith({ String? name, int? age }) {
    return Person(
      name: name?? this.name,
      age: age ?? this.age,
    );
  }
}