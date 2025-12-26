void main() {
  // VARIABLES store data

  int age = 20;
  double price = 99.5;
  String name = "Faizan";
  bool isStudent = true;

  print(age);
  print(price);
  print(name);
  print(isStudent);

  // Using var (type inference)
  var city = "Karachi";
  var count = 10;

  print(city);
  print(count);

  // dynamic (type can change - avoid unless needed)
  dynamic value = 100;
  print(value);

  value = "One Hundred";
  print(value);

  // Teacher Note:
  // Prefer specific types or var.
  // Avoid dynamic in real projects.
}
