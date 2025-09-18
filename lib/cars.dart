import 'mother_vehicle.dart';

class Car extends Vehicle {
  int _numDoors;

  Car(String brand, int year, double fuelLevel, this._numDoors)
      : super(brand, year, fuelLevel);
  
  int get numDoors =>_numDoors;

  set numDoors(int value){
    if (value <= 0){
      throw ArgumentError('Number of doors must be positive');
    }
    _numDoors = value;
  }

  void openDoors(){
    print('Opening $_numDoors doors of the car');
  }

  void honk(){
    print('Cars says: Beep Beep!');
  }


  @override
  void drive(double distance) {
    print('Car is driving...');
    super.drive(distance);
  }
}