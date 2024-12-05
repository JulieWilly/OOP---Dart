// extending the string with an extension method.
extension StringExtension on String {
// method to capitalize the first letter of a string.
  String capitalizeFirstLetter() {
    if (this.isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + this.substring(1);
  }
}

void main() {
  // create a string object
  String message = 'Hello, World';

  // use the extension method to capitalize the first letter.

  String capitalizedMessage = message.capitalizeFirstLetter();

  // print the result.

  print(capitalizedMessage);
}
