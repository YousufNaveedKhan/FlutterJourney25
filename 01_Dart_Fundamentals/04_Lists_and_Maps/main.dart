void main() {
  // LIST
  List<String> students = ["Faizan", "Faham", "Ibaad"];

  print(students);
  print(students[0]);

  // Loop through list
  for (var student in students) {
    print(student);
  }

  // MAP
  Map<String, int> marks = {
    "Nouman": 85,
    "Sharyar": 78,
    "Abdul Aziz": 90
  };

  print(marks);
  print(marks["Abdul Aziz"]);

  // Loop through map
  marks.forEach((name, score) {
    print("$name scored $score");
  });

  // Teacher Note:
  // Lists → ListView data
  // Maps → JSON / API response
}
