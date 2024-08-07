void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 99);

  print('Call to: $windPlant');

  print('wind: ${chardePhone(windPlant)}');
  print('nuclear: ${chardePhone(nuclearPlant)}');
}

double chardePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) throw Exception('Not enouth energy');

  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  consumeEnergy(double amount) {
    this.energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  double energyLeft;
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
