void main() async {
  print('Inicio de la tarea');

  try {
    final value = await httpGet('url');
    print('El value es: $value');
  } on Exception catch (err) {
    print('Excepcion $err');
  } catch (err) {
    print('Tenemos un error $err');
  } finally {
    print('Finally');
  }

  print('Fin de la tarea');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 2));

  throw Exception('No hay parametros en la URL');

  return 'Respuesta de la peticion HTTP';
}
