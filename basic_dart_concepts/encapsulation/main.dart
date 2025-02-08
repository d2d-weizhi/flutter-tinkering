class YearGroup {
	// public property
	var students = ["Arnav", "Vansh", "Oscar"];

	// final and a private property
	final _teacher = "Mr. Sanat";

	// public property
	String topper = "Freya";

	String getTeacher() {
		return _teacher;
	}
}

void main() {
	// object of YearGroup class
	var year1 = YearGroup();

	year1.topper = "Ipsi";

	// Accessing property using object
	print(year1.getTeacher());
	print(year1.topper);
}