void main() {
  Student s1 = Student("Faizan", 20);
  Student s2 = Student("Faham", 22);

  s1.displayInfo();
  s2.displayInfo();
}

// CLASS
class Student {
  String name;
  int age;

  // CONSTRUCTOR
  Student(this.name, this.age);

  // METHOD
  void displayInfo() {
    print("Name: $name, Age: $age");
  }
}

/*
Teacher Note:
- Everything in Flutter is a class
- Widgets are also classes
- If OOP is weak, Flutter will feel hard
*/
