import 'mother_vehicle.dart';

class Boat extends Vehicle {
  bool _hasSails;

  Boat(String brand, int year, double fuelLevel, this._hasSails)
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