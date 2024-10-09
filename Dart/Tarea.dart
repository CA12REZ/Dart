abstract class PersonBase { //Clase : Jorge Cazarez Cruz 
  String tituloCortesia;
  String nombre;
  String primerApellido;
  String segundoApellido;
  DateTime fechaNacimiento;
  String fotografia;
  String genero;
  String tipoSangre;
  bool estatus;
  DateTime fechaRegistro;
  DateTime fechaActualizacion;

 
  PersonBase({  // Constructor de la clase abstracta
    required this.tituloCortesia,
    required this.nombre,
    required this.primerApellido,
    required this.segundoApellido,
    required this.fechaNacimiento,
    required this.fotografia,
    required this.genero,
    required this.tipoSangre,
    required this.estatus,
    required this.fechaRegistro,
    required this.fechaActualizacion,
  });

  
  String mostrarDatos();// Método abstracto para mostrar los datos
}


class Miembro extends PersonBase {// Clase hija Miembro con datos específicos para un miembro
  int id;
  int membresiaId;
  int usuarioId;

 
  Miembro({ // Constructor de la clase hija
    required this.id,
    required this.membresiaId,
    required this.usuarioId,
    required String tituloCortesia,
    required String nombre,
    required String primerApellido,
    required String segundoApellido,
    required DateTime fechaNacimiento,
    required String fotografia,
    required String genero,
    required String tipoSangre,
    required bool estatus,
    required DateTime fechaRegistro,
    required DateTime fechaActualizacion,
  }) : super(
          tituloCortesia: tituloCortesia,
          nombre: nombre,
          primerApellido: primerApellido,
          segundoApellido: segundoApellido,
          fechaNacimiento: fechaNacimiento,
          fotografia: fotografia,
          genero: genero,
          tipoSangre: tipoSangre,
          estatus: estatus,
          fechaRegistro: fechaRegistro,
          fechaActualizacion: fechaActualizacion,
        );

  @override
  String mostrarDatos() {
    return '''
    ID: $id
    Membresía: $membresiaId
    Usuario: $usuarioId
    Titulo cortesia: $tituloCortesia
    Nombre Completo: $nombre $primerApellido $segundoApellido 
    Fecha de Nacimiento: ${fechaNacimiento.toIso8601String()}
    Fotografía: $fotografia
    Género: $genero
    Tipo de Sangre: $tipoSangre
    Estatus: ${estatus ? "Activo" : "Inactivo"}
    Fecha de Registro: ${fechaRegistro.toIso8601String()}
    Fecha de Actualización: ${fechaActualizacion.toIso8601String()}
    ''';
  }
}

void main() {// Caso 1: Nuevo miembro registrado hoy
  Miembro nuevoMiembro = Miembro(
    id: 1,
    membresiaId: 101,
    usuarioId: 1001,
    tituloCortesia: 'Premium',
    nombre: 'Jorge',
    primerApellido: 'Cazarez',
    segundoApellido: 'Cruz',
    fechaNacimiento: DateTime(1990, 5, 15),
    fotografia: 'JorgeCV1.jpg',
    genero: 'Masculino',
    tipoSangre: 'O+',
    estatus: true,
    fechaRegistro: DateTime.now(),
    fechaActualizacion: DateTime.now(),
  );
  Miembro exEmpleado = Miembro(  // Caso 2: Miembro nuevo que fue empleado del gym
    id: 2,
    membresiaId: 102,
    usuarioId: 1002,
    tituloCortesia: 'Estudiante',
    nombre: 'Fulanito',
    primerApellido: 'Perez',
    segundoApellido: 'Islas',
    fechaNacimiento: DateTime(1985, 8, 22),
    fotografia: 'fot2.jpg',
    genero: 'Femenino',
    tipoSangre: 'A+',
    estatus: true,
    fechaRegistro: DateTime(2023, 1, 10),
    fechaActualizacion: DateTime.now(),
  );
  Miembro dadoDeBaja = Miembro( // Caso 3: Miembro que se da de baja de la cortesía
    id: 3,
    membresiaId: 103,
    usuarioId: 1003,
    tituloCortesia: '', 
    nombre: 'Carlos',
    primerApellido: 'Fernandez',
    segundoApellido: 'Martinez',
    fechaNacimiento: DateTime(1970, 2, 10),
    fotografia: 'foto3.jpg',
    genero: 'Masculino',
    tipoSangre: 'B-',
    estatus: false, 
    fechaRegistro: DateTime(2022, 6, 15),
    fechaActualizacion: DateTime.now(),
  );

 
  print('Caso 1: Nuevo Miembro'); // Mostrar los tres casos
  print(nuevoMiembro.mostrarDatos());
  print('\nCaso 2: Ex-empleado que es miembro');
  print(exEmpleado.mostrarDatos());
  print('\nCaso 3: Miembro dado de baja');
  print(dadoDeBaja.mostrarDatos());
}