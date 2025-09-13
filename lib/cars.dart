import 'mother_vehicle.dart';

class Car extends Vehicle {
  int numberOfDoors;

  Car(String brand, int year, double fuelLevel, this.numberOfDoors)
      : super(brand, year, fuelLevel);

  void honk() {
    print('Car honks: Beep beep!');
  }

  @override
  void drive(double distance) {
    print('Car is driving...');
    super.drive(distance);
  }
}