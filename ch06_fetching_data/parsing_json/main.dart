import 'dart:convert';
import 'person.dart';

void main() {
  // Parsing a single json record.
  // String jsonText = '{"name": "John", "age": 30}';
  // Map<String, dynamic> jsonMap = json.decode(jsonText);

  // Person person = Person.fromJson(jsonMap);
  // print('Name: ${person.name}, Age: ${person.age}');

  // Parsing a json array.
  String jsonText = '[{"name": "John", "age": 30}, {"name": "Alice", "age": 25}]';

  try {
    List<dynamic> jsonList = json.decode(jsonText);

    List<Person> people = jsonList.map((json) => Person.fromJson(json)).toList();

    for(Person person in people) {
      print('Name: ${person.name}, Age: ${person.age}');
    }
  } catch (e) {
    // Handle the exception
    print('Error while parsing JSON: $e');
  }

}