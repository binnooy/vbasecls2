import 'mother_vehicle.dart';

class Boat extends Vehicle {
  bool hasSails;

  Boat(String brand, int year, double fuelLevel, this.hasSails)
      : super(brand, year, fuelLevel);

  void anchor() {
    print('Boat anchored safely.');
  }

  @override
  void drive(double distance) {
    print('Boat is sailing...');
    super.drive(distance);
  }
}