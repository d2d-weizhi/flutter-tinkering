// class Example1 (Interface1)
class Example1 {
	void printData1() {
		print("Hello Example1!!");
	}
}

// class Example2 (Interface2)
class Example2 {
	void printData2() {
		print("Hello Example2!!");
	}
}

class Example implements Example1, Example2 {
	@override
	void printData1() {
		print("Hello Example1, welcome!");
	}

	@override
	void printData2() {
		print("Hello Example2, welcome!");
	}
}

void main() {
	// Creating object of the class Example.
	var example = Example();

	// Calling method (After implementation)
	example.printData1();
	example.printData2();
}