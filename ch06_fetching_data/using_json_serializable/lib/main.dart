import 'dart:convert';
import 'person.dart';

void main() {
  String jsonStr = '{"name": "John", "age": 30}';

  Map<String, dynamic> jsonMap = json.decode(jsonStr);  // Decode JSON string

  // Deserialize JSON data into a Person object
  Person person = Person.fromJson(jsonMap);

  // Access the properties of the Person object
  print('Name: ${person.name}, Age: ${person.age}');

  // Serialize the Person object back to JSON
  String serializedJson = json.encode(person.toJson());
  print('Serialized JSON: $serializedJson');
}