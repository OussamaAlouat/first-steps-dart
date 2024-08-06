void main() {
  final wolverine = new Hero(name: 'Lodan', power: 'regeneracion');

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = 'Sin poder'});

  /**Hero(String pName, String pPower)
      : name = pName,
        power = pPower;
        
    **/

  @override
  String toString() {
    return '$name - $power';
  }
}
