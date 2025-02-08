// abstract
abstract class Language {
	// abstract methods
	void write();

	void read();

	// concrete method
	void understand() {
		print("I can understand");
	}
}

class English extends Language {
	@override
	void write() {
		print("I can write English!");
	}

	@override
	void read() {
		print("I can read English!");
	}
}

void main() {
	// object of English class
	var english = English();

	// Accessing property using object
	english.write();
	english.read();
}