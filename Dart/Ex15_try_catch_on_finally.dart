void main() async {
  // Imprime el inicio del programa
  print('Inicio del programa');
  
  try {
    // Llama a la función httpGet y espera su resultado
    final value = await httpGet('https://fernando-herrera.com/cursos');
    // Imprime el valor devuelto por la función httpGet si la llamada fue exitosa
    print('éxito: $value');
    
  } on Exception catch(err) {
    // Captura excepciones específicas del tipo Exception
    print('Tenemos una Exception: $err');
    
  } catch (err) {
    // Captura cualquier otro tipo de error que no sea una Exception
    print('OOP!! algo terrible pasó: $err');
    
  } finally {
    // Este bloque se ejecuta siempre, sin importar si hubo un error o no
    print('Fin del try y catch');
  }
  
  // Imprime el fin del programa
  print('Fin del programa');
}

// Función que simula una petición HTTP
Future<String> httpGet(String url) async {
  // Simula un retraso de 1 segundo para imitar el tiempo de respuesta del servidor
  await Future.delayed(const Duration(seconds: 1));
  
  // Lanza una excepción si no hay parámetros en el URL
  throw Exception('No hay parámetros en el URL');
  
  // Las siguientes líneas están comentadas, pero podrían ser usadas para simular respuestas exitosas
  // throw 'Error en la petición'; // Lanza un error genérico
  // return 'Tenemos un valor de la petición'; // Retorna un valor simulado
}
