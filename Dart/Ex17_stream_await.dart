void main() {
  // Inicia el stream de números y escucha los valores emitidos
  emitNumber().listen((int value) {
    // Imprime cada valor recibido del stream
    print('Stream value: $value');
  });
}

// Función que emite un stream de números utilizando la sintaxis 'async*'
Stream<int> emitNumber() async* {
  // Lista de valores que se van a emitir
  final valuesToEmit = [1, 2, 3, 4, 5];
  
  // Recorre cada valor en la lista
  for (int i in valuesToEmit) {
    // Espera 1 segundo antes de emitir el siguiente valor
    await Future.delayed(const Duration(seconds: 1));
    // Emite el valor actual
    yield i;
  }
}
