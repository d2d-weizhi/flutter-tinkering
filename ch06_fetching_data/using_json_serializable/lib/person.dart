import 'package:json_annotation/json_annotation.dart';

part '../person.g.dart';

@JsonSerializable()
class Person {
  // The generated code assumes these values exist in JSON.
  final String name;
  final int age;

  Person(this.name, this.age);

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);
}