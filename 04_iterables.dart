void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 10];

  print('List original $numbers');
  print('Length ${numbers.length}');
  print('First ${numbers.first}');
  print('last ${numbers.last}');
  print('Reversed ${numbers.reversed}');

  final revesedNumbers = numbers.reversed;

  print('Iterabe $revesedNumbers');
  print('List ${revesedNumbers.toList()}');
  print('Set ${revesedNumbers.toSet()}');

  final numbersGreatherThan5 = numbers.where((int num) {
    return num > 5;
  });

  print('>5 ${numbersGreatherThan5.toSet()}');
}
