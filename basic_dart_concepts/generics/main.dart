T getElement<T>(List<T> genericList, int index) {
  T element = genericList[index];
  print (element);

  return element;
}

void main() {
  // Lists of three different data types declared
  List<int> ageList = [9, 3, 16];
  List<double> heightList = [4.4, 3.6, 5.8];
  List<String> nameList = ["Arnav", "Oscar", "Sanat"];

  getElement(ageList, ageList.length - 1);
  getElement(heightList, heightList.length - 1);
  getElement(nameList, nameList.length - 1);
}