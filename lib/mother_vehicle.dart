class Vehicle {
  String _brand;
  int _year;
  double _fuelLevel;

  Vehicle(this._brand, this._year, this._fuelLevel);

  // Getter for brand
  String get brand => _brand;

  // Getter and Setter for fuelLevel with validation
  double get fuelLevel => _fuelLevel;

  set fuelLevel(double value) {
    if (value < 0 || value > 100) {
      throw ArgumentError('Fuel level must be between 0 and 100.');
    }
    _fuelLevel = value;
  }

  void refuel(double amount) {
    if (amount <= 0) {
      print('Refuel amount must be positive.');
      return;
    }
    _fuelLevel = (_fuelLevel + amount > 100) ? 100 : _fuelLevel + amount;
    print('Vehicle refueled. Current fuel level: $_fuelLevel%');
  }

  void drive(double distance) {
    double fuelNeeded = distance * 0.2;
    if (fuelNeeded > _fuelLevel) {
      print('Not enough fuel to drive $distance km.');
    } else {
      _fuelLevel -= fuelNeeded;
      print('Drove $distance km. Remaining fuel: $_fuelLevel%');
    }
  }
}