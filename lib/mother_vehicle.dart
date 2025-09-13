// vehicle.dart
class Vehicle {
  String _brand;
  int _year;
  double _fuelLevel;

  Vehicle(this._brand, this._year, this._fuelLevel);

  // Getter and Setter with validation
  double get fuelLevel => _fuelLevel;

  set fuelLevel(double value) {
    if (value < 0 || value > 100) {
      throw ArgumentError('Fuel level must be between 0 and 100.');
    }
    _fuelLevel = value;
  }

  // Method 1: Refuel with validation
  void refuel(double amount) {
    if (amount <= 0) {
      print('Refuel amount must be positive.');
      return;
    }
    if (_fuelLevel + amount > 100) {
      _fuelLevel = 100;
    } else {
      _fuelLevel += amount;
    }
    print('Vehicle refueled. Current fuel level: $_fuelLevel%');
  }

  // Method 2: Drive with validation
  void drive(double distance) {
    double fuelNeeded = distance * 0.2; // Assume 0.2% fuel per km
    if (fuelNeeded > _fuelLevel) {
      print('Not enough fuel to drive $distance km.');
    } else {
      _fuelLevel -= fuelNeeded;
      print('Drove $distance km. Remaining fuel: $_fuelLevel%');
    }
  }
}