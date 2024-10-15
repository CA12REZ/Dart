void main() async {
  // Imprime el inicio del programa
  print('Inicio del programa');
  
  try {
    // Llama a la función httpGet y espera su resultado
    final value = await httpGet('https://fernando-herrera.com/cursos');
    // Imprime el valor devuelto por la función httpGet
    print(value);
    
  } catch (err) {
    // Captura y maneja cualquier error que ocurra durante la llamada a httpGet
    print('Tenemos un error: $err');
  }
  
  // Imprime el fin del programa
  print('Fin del programa');
}

// Función que simula una petición HTTP
Future<String> httpGet(String url) async {
  // Simula un retraso de 1 segundo, como si estuviera esperando una respuesta del servidor
  await Future.delayed(const Duration(seconds: 1));

  // Simula un éxito o un fallo de forma aleatoria
  if (DateTime.now().second % 2 == 0) {
    // Retorna un valor si el segundo actual es par
    return 'Tenemos un valor de la petición';
  } else {
    // Lanza un error si el segundo actual es impar
    throw 'Error en la petición';
  }
}
