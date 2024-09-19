void main() {
  
  var myName = 'Jorge'; 
  String myLastName = 'Cazarez';
  final int myDNI = 210458;
  late final int myAge;
  
  //corregir datos
  myName = "Jorge Cazarez Cruz";
  
      print('Hola $myName $myLastName. tu matricula es : $myDNI y tu edad no me la se porque no se cuando naciste');
  
  
 //Interpolando  el valor de las variables 
  print('Hola ${myName.toUpperCase()} ${myLastName.toUpperCase()} tu matricula es : $myDNI y tu edad no me la se porque no se cuando naciste');
  
}