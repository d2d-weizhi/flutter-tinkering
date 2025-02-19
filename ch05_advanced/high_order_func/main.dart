// A high-order function that takes a function as an argument.
int operate (int a, int b, int Function(int, int) operation) {
  return operation(a, b);
}

// Functions that can be passed as arguments
int add (int a, int b) => a + b;
int subtract (int a, int b) => a - b;
int multiply (int a, int b) => a * b;

void main() {
  print(operate(5, 3, add));
  print(operate(10, 4, subtract));
  print(operate(7, 6, multiply));
}