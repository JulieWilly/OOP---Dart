// base class.
class Animal {
  // method to be overriden by the direved class.
  void makeSound() {
    print('Animal makes a sound.');
  }
}

// Derived class Dog that overrides makeSound method.
class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog barks.');
  }
}

// derived class car that overrides makesound method.
class Cat extends Animal {
  @override
  void makeSound() {
    print('Cat meows');
  }
}

void main() {
  // create an instance of Animal, Dog, and Cat.
  Animal animal = Animal();

  Dog dog = Dog();
  Cat cat = Cat();

  // calling the overiden make sound method.
  animal.makeSound(); // calls the animal version.
  dog.makeSound(); // call the dog make sound version
  cat.makeSound(); // calls the cat makesound version.
}
