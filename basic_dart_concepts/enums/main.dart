// Creating enum UserState
enum UserState {
	// Inserting data
	authorized,
	pending,
	rejected
}

void main() {
	// Printing the values present in the UserState
	// for (UserState state in UserState.values) {
	// 	print(state);
	// }

	// Using late variable with enum type
	late UserState lateEnumVar;

	// Assigning an enum value to the late variable later in the code
	lateEnumVar = UserState.authorized;

	// Using const variable with enum type
	const UserState constEnumVal = UserState.authorized;

	// Using switch-case with enums
	switch (lateEnumVar) {
		case UserState.authorized:
			print("This is an authorized user.");
			break;
		case UserState.pending:
			print("This is a pending user.");
			break;
		case UserState.rejected:
			print("This is a rejected user.");
			break;
	}

	// Instead, use toString() to get the enum's name as a string
	// Here, we use toString() and split('.') to extract the enum name
	print("The state is ${constEnumVal.toString().split('.').last}");

	// The index getter returns the index of the enum value in the enum declaration.
	print("The index of state is ${constEnumVal.index}");


	// Here, we use toString() and split('.') to extract the enum name.
	print("The name of lateEnumVar is ${lateEnumVar.toString().split('.').last}");

	// The index getter returns the index of the enum value in the enum declaration
	print('The index of constEnumVal is ${constEnumVal.index}');
}