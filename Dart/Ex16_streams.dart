void main() {
  // Inicia el stream de números y escucha los valores emitidos
  emitNumbers().listen((value) {
    // Imprime cada valor recibido del stream
    print('Stream value: $value');
  });
}

// Función que emite un stream de números
Stream<int> emitNumbers() {
  // Crea un stream que emite un valor cada segundo
  return Stream.periodic(const Duration(seconds: 1), (value) {
    // La función callback recibe el número de iteración
    return value; // Retorna el valor actual de la iteración
  }).take(5); // Limita el stream a los primeros 5 valores
}
