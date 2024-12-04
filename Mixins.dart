// base class employee
class Employee {
  // methods that simulate an employee clocking in
  void clockIn() {
    print('Employee clocked in.');
  }
}

// Mixin for medical related functionality.

mixin Medical {
  // Method that simulates taking a patient's temperature.
  int takeTemperature() {
    print('Taking temperature...');
    return 98;
  }
}

// class Nurse extends Employee and mixes in Medical.
class Nurse extends Employee with Medical {
  // inheirts clockIn from employee
  // inherits tekeTemperature from medical.
}

class Doctor extends Employee with Medical {
  // inherits clockIn from employee.
  // inherits takeTemperature from medical

  // Method specific to doctor for performing surgery.
  void performSugerly() {
    print('Performing surgery.');
  }
}

// Class Bartender extends Employee but does not mix in Medical
class Bartender extends Employee {
  // Inherits clockIn from Employee
  // Does not have access to takeTemperature or performSurgery
}

void main() {
  // create instances of different employee tupes.
  Nurse nurse = Nurse();
  Doctor doctor = Doctor();
  Bartender bartender = Bartender();

  // use Inherited methods.
  nurse.clockIn(); // calls clockin method from employee class
  nurse.takeTemperature(); // calls takeTemperature from medical mixin

  doctor.clockIn(); // calls clockIn method from Employee class
  doctor.takeTemperature(); // Calls takeTemperature from medical miins
  doctor.performSugerly(); // calls doctor-specific method

  bartender.clockIn(); // bartender can only clock in as it doesn's mix in Medical
}
