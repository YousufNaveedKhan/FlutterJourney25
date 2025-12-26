void main() {
  int age = 18;

  // IF ELSE
  if (age >= 18) {
    print("You are an adult");
  } else {
    print("You are underage");
  }

  // ELSE IF
  int marks = 75;

  if (marks >= 80) {
    print("Grade A");
  } else if (marks >= 60) {
    print("Grade B");
  } else {
    print("Fail");
  }

  // FOR LOOP
  for (int i = 1; i <= 5; i++) {
    print("For loop: $i");
  }

  // WHILE LOOP
  int i = 1;
  while (i <= 5) {
    print("While loop: $i");
    i++;
  }

  // Teacher Tip:
  // Conditions decide WHAT to run
  // Loops decide HOW MANY TIMES to run
}
