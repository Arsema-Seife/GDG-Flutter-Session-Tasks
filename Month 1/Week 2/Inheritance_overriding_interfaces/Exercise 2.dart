class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print("Hi, I am $name and I am $age years old.");
  }
}

class Student extends Person {
  String school;

  Student(String name, int age, this.school) : super(name, age);

  @override
  void introduce() {
    print("Hi, I am $name, a $age-year-old student from $school.");
  }
}

void main() {
  Person p = Person("Alice", 30);
  Student s = Student("Bob", 20, "AASTU");

  p.introduce();
  s.introduce();
}
