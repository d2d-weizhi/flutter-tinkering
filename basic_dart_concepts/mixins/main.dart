// creating a Laugh mixin
mixin Laugh {
	void laugh() => print("Laughing");
}

// creating a Talk mixin
mixin Talk {
	void talk() => print("Talking");
}

// Creating super class
class Human {
	void think() => print("Thinking");
}

// creating sub-class
class Boy extends Human with Laugh, Talk {
	@override 
	void think() => print("No more thinking");
	

	@override
	void laugh() => print("Smiling");
}

void main() {
	var boy = Boy();

	boy.laugh();
	boy.talk();
	boy.think();
}