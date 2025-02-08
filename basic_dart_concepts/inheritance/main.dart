class Human {
	void walk() {
		print("Humans walk!");
	}
}

class Man extends Human {
	void speak() {
		print("That man can speak");
	}
}

void main() {
	var man = Man();

	man.speak();
	man.walk();
}