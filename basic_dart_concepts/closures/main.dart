void main() {
	// Assigning an anonymous function to a variable
	var addNumbers = (int x, int y) {
		return x + y;
	};

	// Calling the anonymous function using the variable
	var result = addNumbers(3, 4);

	print (result);

	// Passing an anonymous function as argument to another function
	var multiplyNumbers = (int x, int y) {
		return x * y;
	};

	doCalculation(5, 6, multiplyNumbers);
}

void doCalculation(int x,int y, Function operation) {
	var result = operation(x, y);

	print(result);
}