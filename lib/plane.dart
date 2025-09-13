import 'mother_vehicle.dart';

class Plane extends Vehicle {
  int altitude;

  Plane(String brand, int year, double fuelLevel, this.altitude)
      : super(brand, year, fuelLevel);

  void ascend(int meters) {
    altitude += meters;
    print('Plane ascended to $altitude meters.');
  }

  @override
  void drive(double distance) {
    print('Plane is flying...');
    super.drive(distance);
  }
}