import 'dart:math';

class Circle {
  // private property
  double _radius;

//constructor.
  Circle(this._radius);

  // get method to access the private property.
  double get radius => _radius;

  // Setter method to update the radius with a validation.

  set radius(double newValue) {
    if (newValue > 0) {
      _radius = newValue;
    } else {
      print('Radius must be greater than 0');
    }
  }

  // method to calculate the area of a circle.
  double areaOfACircle() {
    return 3.142 * _radius * _radius;
  }
}

void main() {
  Circle circleArea = Circle(23.5);

  // access the radius using the getter method.
  print('Initial radius is: ${circleArea.radius}');

  // calculating the printing of an area.
  print('The area is : ${circleArea.areaOfACircle()}');

  // updating the radius using a setter.

  circleArea.radius = 30;

  // accessing the updated radius and the new area
  print('Update radius : ${circleArea.radius}');
  print('Updated area : ${circleArea.areaOfACircle()}');


}
