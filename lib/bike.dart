import 'mother_vehicle.dart';

class Bike extends Vehicle {
  bool _caferacer;

  Bike(String brand, int year, double fuelLevel, this._caferacer)
      : super(brand, year, fuelLevel);

  void ringBell() {
    print('Bike goes to vroommmmvrommmmmm!');
  }

  @override
  void drive(double distance) {
    print(_caferacer
        ? 'bike is cruising...'
        : 'bike is moving...'); 
    super.drive(distance);
  }
}