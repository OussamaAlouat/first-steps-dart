void main() {
  print(greetEveryone());
  print('suma ${addTwoNumbers(2, 20)}');

  print(greetPerson(name: 'oussama', message: 'Hi,'));
}

String greetEveryone() => 'Hello everyone';

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptionls(int a, [int b = 0]) {
  // b = b ?? 0;
  // b ??=0; esto es lo mismo que la anterior
  return a + b;
}

String greetPerson({required String name, String message = 'Hola,'}) {
  return '$message $name';
}
