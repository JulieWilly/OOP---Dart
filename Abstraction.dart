// abstract class shape.

abstract class Shape {
  // abstract method has no implementations.
  double calculateArea();

  // concrete method with implementation.

  void printInfor() {
    print('This is a shape.');
  }
}

// Concrete class circle extends Shape
class Circle extends Shape {
  double radius;

  // constructor.
  Circle(this.radius);

  // override the abstract method to provide specific implementations.
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  // constuctor.
  Rectangle(this.width, this.height);

  // override the abstract method to provide specific element implementation.
  @override
  double calculateArea() {
    return width * height;
  }
}

void main() {
  // instance
  Circle circle = Circle(15.3);
  Rectangle rectangle = Rectangle(7.5, 5.5);

  // using the common interface by the shape abstract class.

  circle.printInfor();
  print('Circle area is : ${circle.calculateArea()}');

  rectangle.printInfor();
  print('Rectangle area : ${rectangle.calculateArea()}');
}
