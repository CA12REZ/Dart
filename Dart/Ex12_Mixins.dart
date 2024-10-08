abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('Estoy volando');

  void planear(int distanciaMaxima) => print('Este animal puede planear hasta: $distanciaMaxima');

  void ascender(double alturaMaxima) => print('Este animal puede ascender hasta una altura de: $alturaMaxima mts. sobre el nivel del mar');

  void descender(double velocidadMaxima) => print('Este animal puede descender a una velocidad de hasta: $velocidadMaxima');
}

mixin Caminante {
  void caminar() => print('¡Estoy caminando!');

  void comer(double cantidad) => print('Este animal puede comer hasta: $cantidad kg.');

  void trotar() => print('¡Estoy trotando!');

  void saltar() => print('¡Estoy saltando!');
}

mixin Nadador {
  void nadar() => print('¡Estoy nadando!');

  void sumergir(double profundoMaximo) => print('Este animal se puede sumergir un máximo de: $profundoMaximo mts. bajo el nivel del mar');

  void respirar(bool estado) => print('Este animal puede respirar fuera del agua: $estado');
}

// Animales
class Delfin extends Mamifero with Nadador {}

class MurcielagoEnano extends Mamifero with Volador, Caminante {
  void ascender(double alturaMaxima) {
    print('El murciélago enano asciende hasta una altura de: $alturaMaxima mts. sobre el nivel del mar');
  }

  void descender(double velocidadMaxima) {
    print('El murciélago enano desciende a una velocidad de hasta: $velocidadMaxima');
  }

  void comer(double cantidad) {
    print('El murciélago enano puede comer hasta: $cantidad kg. de insectos.');
  }
}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class TiburonMartillo extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

class TiburonBlanco extends Pez with Nadador {}

class Orca extends Mamifero with Nadador {}

void main() {
  // final flipper = Delfin();
  // print('Instanciando la clase de Delfín y accediendo a sus funciones:');
  // flipper.nadar();

  print('----------------------------------------------------------------');

  print('Instanciando la clase de Murciélago Enano y accediendo a sus funciones:');
  // https://sierradebaza.org/fichas-tecnicas/fichas-de-fauna/fichas-mamiferos/vi-orden-chiroptera/familia-vespertilionidae/murcielago-enano-y-murcielago-de-cabrera-pipistrellus-pipistrellus-pipistrellus-pygmaeus
  final chupacabras = MurcielagoEnano();
  chupacabras.volar();
  chupacabras.caminar();
  chupacabras.ascender(55);
  chupacabras.descender(200);
  chupacabras.comer(0.05); // Asumiendo que come 50 gramos de insectos


  print('----------------------------------------------------------------');

  // print('Instanciando la clase de Pato y accediendo a sus funciones:');
  // final duck = Pato();
  // duck.caminar();
  // duck.volar();
  // duck.nadar();

  print('----------------------------------------------------------------');

  final shark = TiburonMartillo();
  // https://www.nationalgeographic.es/animales/tiburones-martillo
  print('Instanciando la clase de Tiburón Martillo y accediendo a sus funciones:');
  shark.nadar();
  shark.sumergir(200);
  shark.respirar(true);

  print('----------------------------------------------------------------');

  // final whale = Orca();
  // print('Instanciando la clase de Orca y accediendo a sus funciones:');
  // whale.nadar();
  // whale.sumergir(300);
  // whale.respirar(true);

  print('----------------------------------------------------------------');
}
