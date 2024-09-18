void main() {

  final pokemon = 
  {
    'Name' : 'Pikachu',
    'HP' : 100,
    'isAlive': true,
    'abilities': ['Impact Trueno', 'Cola de hierro', 'Rapido'],
    'sprites':
    {
      1:"pikachu/front.png",
      2:"pikachu/back.png"
    }
    
  };
  
  final Map<String, dynamic>trainer = {
    'Name' : 'Ash ketchup',
    'Gender' : 'Male',
    'Age' : 12,
    'isGymnasiumLeader' : false,
  };
  
  
  final pokemons =
  {
    1: "Pikachu",
    2: "Charmander",
    3: "Squirtle",
    4: "Pidgeot"
  };
  
  print ("""
  Los datos del Pokemon son: 
  ---------------------------------
  Pokemon = $pokemon
  Trainer = $trainer
  Pokemons = $pokemons
  """);
  print("***************************************");
  print("""
  Accediendo a las propiedades del pokemon usando los braquets/ corchetes []: 
  ----------------------------------------------------
  Nombre = ${pokemon['Name']}
  HP = ${pokemon['HP']}
  Vivo = ${pokemon['isAlive']}
""");  
}
