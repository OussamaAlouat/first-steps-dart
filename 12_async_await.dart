void main() async {
  print('Inicio de la tarea');

  try {
    final value = await httpGet('url');
    print('El value es: $value');
  } catch (err) {
    print('Tenemos un error $err');
  }

  print('Fin de la tarea');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 2));

  // throw 'Error en la peticion';

  return 'Respuesta de la peticion HTTP';
}
