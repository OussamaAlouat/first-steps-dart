void main() {
  print('Inicio de la tarea');

  httpGet('url').then((value) {
    print('Value $value');
  }).catchError((err) {
    print('Err $err');
  });

  print('Fin de la tarea');
}

Future httpGet(String url) {
  return Future.delayed(Duration(seconds: 2), () {
    throw 'Error en la llamada';
    //return 'Respuesta de la peticion HTTP';
  });
}
