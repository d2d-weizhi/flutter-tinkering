Future<String> getEmployeeDetails() async {
  var employee = await fetchEmployeeName();

  return 'Employee name is: $employee';
}

Future<String> fetchEmployeeName() => Future.delayed(
  const Duration(seconds: 2),
  () => "Weizhi"
);

Future<void> main() async {
  print(await getEmployeeDetails());
}