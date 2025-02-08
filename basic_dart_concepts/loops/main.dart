void main() {
	for (int i = 0; i < 5; i++) {
		print('i is $i');
	}

	// Looping using for...in
	List<String> namesList = ['Arnav', 'Oscar', 'Sanat'];

	for (String name in namesList) {
		print(name);
	}

	// Looping with while...
	var count = 4;
	int i = 1;

	while (i <= count) {
		print('Hello Weizhi');
		i++;
	}

	// Looping with do...while()
	do {
		// Print statement inside the loop[
		print("Hello Weizhi");

		i++;

		if (i == 2) {
			continue;
		}

		if (i == 3) {
			break;
		}
	} while (i <= count);
}