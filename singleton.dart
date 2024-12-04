// singleton class manage file system operations.

class FileSystemManager {
  // static final instance variable to hold the single instance of the class
  static final FileSystemManager _instance = FileSystemManager._internal();

// private constructor to restrict external instantiation.
  FileSystemManager._internal();

  // Factory constructor to control the creation of the singleToninstance
  factory FileSystemManager() {
    return _instance;
  }

  // method to simulate opening a file.
  void openFile(String fileName) {
    print('Opening file : $fileName');
  }

  // Method to simulate writing to a file.
  void writeFile(String fileName, String content) {
    print('Writing to file : $fileName with content : "$content');
  }
}

void main() {
  // create two references to the file systemmanager singleton instance
  FileSystemManager manager1 = FileSystemManager(); // uses factory constructor.
  FileSystemManager manager2 =
      FileSystemManager(); // Returns thte same instance.

  // verify that both references point to the same singleton instance
  print(
      'Are manager 1 and manager 2 the same instance ? ${identical(manager1, manager2)}');

  print('Hashcode of manager 1: ${manager1.hashCode}');
  print('Hashcode of manager 2 : ${manager2.hashCode}');

  // calling methods on both references.
  manager1.openFile('data.txt');
  manager2.writeFile('data.txt', 'Hello dart. Introduction to OOP in dart');
}
