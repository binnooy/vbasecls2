import 'mother_vehicle.dart';
import 'boat.dart';
import 'plane.dart';
import 'cars.dart';
import 'bike.dart';

void main() {
  // 🚗 Car
  Car myCar = Car('Toyota', 2022, 70.0, 4);
  print('\n--- Car ---');
  myCar.honk();
  myCar.drive(50);
  myCar.refuel(20);

  // 🚴 Bike
  Bike myBike = Bike('Giant', 2021, 40.0, true);
  print('\n--- Bike ---');
  myBike.ringBell();
  myBike.drive(30);
  myBike.refuel(15);

  // 🚤 Boat
  Boat myBoat = Boat('Yamaha', 2019, 60.0, true);
  print('\n--- Boat ---');
  myBoat.anchor();
  myBoat.drive(80);
  myBoat.refuel(25);

  // ✈️ Plane
  Plane myPlane = Plane('Boeing', 2020, 90.0, 1000);
  print('\n--- Plane ---');
  myPlane.ascend(500);
  myPlane.drive(200);
  myPlane.refuel(5);

  // 🧪 Invalid fuel test
  print('\n--- Invalid Fuel Test ---');
  try {
    myCar.fuelLevel = 150; // Should throw error
  } catch (e) {
    print('Caught error: $e');
  }

  // ✅ Final fuel levels
  print('\n--- Final Fuel Levels ---');
  print('Car: ${myCar.fuelLevel}%');
  print('Bike: ${myBike.fuelLevel}%');
  print('Boat: ${myBoat.fuelLevel}%');
  print('Plane: ${myPlane.fuelLevel}%');
}