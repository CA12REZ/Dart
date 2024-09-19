void main (){
  //parctica 04: tipo de dato DART
  
  //Cadenas (String)
  
 final String pokemon = 'Picachu';
  
  //Entero
  final int hp =100;
  
  //boolean
  final bool isAlive = true;
  
  //Lista
  
  final abilities = ['Impact-trueno','Cola de hierro','Ataque Rapido'];
  final sprites = <String>['Picachu_front.png','Pikachu_back.png'];
  
  print ("""El pokemon que elegiste es : $pokemon
  ----------------------------------------------------------------------------------------
  Las estadisticas de $pokemon son :
  Vida (HP) :$hp
  Estatus de Vida : $isAlive
  Habilidades:$abilities
  Imagenes:$sprites;
  ----);
}