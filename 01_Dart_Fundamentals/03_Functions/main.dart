void main() {
  greet();
  greetUser("Misbah");

  int result = add(5, 3);
  print("Sum: $result");

  print("Multiply: ${multiply(4, 2)}");
}

// Simple function
void greet() {
  print("Hello Dart");
}

// Function with parameter
void greetUser(String name) {
  print("Hello $name");
}

// Function with return value
int add(int a, int b) {
  return a + b;
}

// Arrow function
int multiply(int a, int b) => a * b;

// Teacher Note:
// Flutter UI, logic, and callbacks
// all depend heavily on functions
