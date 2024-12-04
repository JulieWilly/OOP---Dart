class Vehicle {
  String brand;
  int year;

  // constructor.
  Vehicle(this.brand, this.year);

  // .. method to display vehicles information
  void displayInfor() {
    print('Brand : $brand');
    print("Year : $year");
  }
}

class Car extends Vehicle {
  String model;

  // constuctor for car which uses super to call the base class constructor.
  Car(String brand, int year, this.model) : super(brand, year);

  // Method to diplay car specifi info.
  void displayCarInfor() {
    displayInfor(); // calling the base class method.
    print('Model  $model');
  }
}

void main() {
  // create an instance of the car class.
  Car car = Car('Mercedez', 2020, 's-class');

  // accessing methods from beoth base and derived class.
  car.displayCarInfor();
}
