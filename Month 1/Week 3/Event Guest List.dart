import 'dart:io';

void main() {
  // Set of invited students
  Set<String> invitedStudents = {"Ali", "Sara", "John", "Mona", "David"};

  // Set of confirmed students (some are null)
  Set<String?> confirmedStudents = {
    "Ali",
    "Sara",
    null,
    "Mike", // not invited (party crasher)
  };

  // Remove null entries safely
  confirmedStudents.remove(null);

  // Convert confirmedStudents to non-null Set<String>
  Set<String> confirmed = confirmedStudents
      .where((s) => s != null)
      .cast<String>()
      .toSet();

  // Students who did NOT confirm (difference)
  Set<String> notConfirmed = invitedStudents.difference(confirmed);

  // Students who crashed the party 😳
  Set<String> crashers = confirmed.difference(invitedStudents);

  // Printing results
  print("📨 Total Invited: ${invitedStudents.length}");
  print("✅ Total Confirmed: ${confirmed.length}");

  print("\n❌ Students who did NOT confirm:");
  if (notConfirmed.isEmpty) {
    print("All invited guests confirmed!");
  } else {
    for (var student in notConfirmed) {
      print("- $student");
    }
  }

  print("\n😳 Party Crashers (confirmed but not invited):");
  if (crashers.isEmpty) {
    print("None 🎉");
  } else {
    for (var student in crashers) {
      print("- $student");
    }
  }

  // ⭐ Extra Challenge — user input
  stdout.write("\nEnter a student name to confirm attendance: ");
  String name = stdin.readLineSync()!;

  invitedStudents.add(name);
  confirmed.add(name);

  print("\nUpdated confirmed list:");
  for (var student in confirmed) {
    print("- $student");
  }
}
