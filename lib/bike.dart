import 'mother_vehicle.dart';

class Bike extends Vehicle {
  bool isElectric;

  Bike(String brand, int year, double fuelLevel, this.isElectric)
      : super(brand, year, fuelLevel);

  void ringBell() {
    print('Bike bell rings: Ding ding!');
  }

  @override
  void drive(double distance) {
    print(isElectric
        ? 'Electric bike is cruising...'
        : 'Pedal-powered bike is moving...');
    super.drive(distance);
  }
}