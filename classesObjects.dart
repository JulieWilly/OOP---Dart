class Car {
  String brand;
  String model;
  int makeYear;
  double currentPrice;

// create a constructor of the class.

  Car(this.brand, this.model, this.makeYear, this.currentPrice);
  void carDetails() {
    print(
        'Car Brand: $brand,  model: $model, manufacturing year :$makeYear, The current price: $currentPrice ');
  }
}

void main() {
  // create an instanc of the car.
  Car myCar = Car('Mercedez', 'E-class', 2019, 2000000000);

  myCar.carDetails();
}
