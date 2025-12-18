import 'dart:io';

Map<String, String> vocabulary = {
  "Algorithm": "A step-by-step procedure to solve a problem",
  "Variable": "A container for storing data values",
  "Function": "A block of code that performs a specific task",
  "Loop": "Used to repeat a block of code",
  "Condition": "Used to make decisions in a program",
  "Map": "Stores data in key-value pairs",
  "List": "An ordered collection of values",
  "Set": "A collection of unique values",
  "Compiler": "Translates source code into machine code",
  "Debugging": "Finding and fixing errors in a program",
};

void printAllWords() {
  print("\n📚 Vocabulary List:");

  // Sort words alphabetically
  var keys = vocabulary.keys.toList();
  keys.sort();

  for (var word in keys) {
    print("- $word : ${vocabulary[word]}");
  }
}

void searchWord() {
  stdout.write("\nEnter word to search: ");
  String word = stdin.readLineSync()!;

  if (vocabulary.containsKey(word)) {
    print("✅ Meaning: ${vocabulary[word]}");
  } else {
    print("❌ Word not found!");
  }
}

void deleteWord() {
  stdout.write("\nEnter word to delete: ");
  String word = stdin.readLineSync()!;

  if (vocabulary.containsKey(word)) {
    vocabulary.remove(word);
    print("🗑️ Word deleted successfully!");
  } else {
    print("❌ Word not found!");
  }
}

void countWords() {
  print("\n📊 Total words learned: ${vocabulary.length}");
}

void main() {
  while (true) {
    print("\n===== Vocabulary Tracker =====");
    print("1. Print all words");
    print("2. Search for a word");
    print("3. Delete a word");
    print("4. Count total words");
    print("5. Exit");
    stdout.write("Choose an option: ");

    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        printAllWords();
        break;
      case '2':
        searchWord();
        break;
      case '3':
        deleteWord();
        break;
      case '4':
        countWords();
        break;
      case '5':
        print("👋 Goodbye!");
        return;
      default:
        print("❗ Invalid choice");
    }
  }
}
