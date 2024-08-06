void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['dito/png', 'no-ditto.png'];
  
  dynamic errorMessage = 'hola';
  errorMessage = true;
  errorMessage = [1,2,3,4,5];
  errorMessage = {1,2,3,4,5};
  errorMessage = () => true;
  errorMessage = null;
  
  /** Como se puede apreciar el dynamic permite que la variable coja cualquier valor sin restricción alguna **/

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
}
