void main() {
  final ironman = Hero(name: 'Iron Man', power: 'Nothing', isAlive: false);
  print(ironman);
  print(ironman.name);
  print(ironman.power);
  print(ironman.isAlive);

  final Map<String, dynamic> rawJson = {
    'name': 'Iron Man raw',
    'power': 'Money raw',
    'isAlive': true,
  };

  final ironMan2 = Hero.fromJson(rawJson);
  print(ironMan2);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power iAlive: ${isAlive ? 'YES!' : 'No!'}';
  }
}

