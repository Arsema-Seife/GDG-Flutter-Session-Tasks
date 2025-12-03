class Student {
  String name;
  int age;

  Student(this.name, this.age);

  Student.guest()
      : name = "Guest",
        age = 0;
}

void main() {
  Student s1 = Student("Alice", 20);

  Student s2 = Student.guest();

  print("Student 1: Name = ${s1.name}, Age = ${s1.age}");
  print("Student 2: Name = ${s2.name}, Age = ${s2.age}");
}
