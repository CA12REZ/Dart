void main() {
  //Practica 05 Tipo de Dato Dinamico (Dynamic-Comodin)
 dynamic errorMessage;
  print("""El valor inicial de errorMessage es : $errorMessage
  Al ser dinamico permite la asignacion de valores nulos.""");
  
errorMensaje= "El usuario y la contraseña no coinciden";
 
  
print("""------------------------------------------- 
El nuevo valor de errormensaje es : $errorMessage
 Ahora le hemos asignado un valor de string""");
  
errorMensaje=404;
  
 print("""------------------------------------------- 
El nuevo valor de errormensaje es : $errorMessage
 En algunos sistemas los errors son controlados por un codigo numerico """);
 
errorMensaje=false;
   print("""------------------------------------------- 
 El nuevo valor de errormensaje es : $errorMessage
 Cuando el sistema funciona correctamente el mensaje de error puede ser falso """);
  
errorMensaje=[400,404,500,502,505];
  
 print("""------------------------------------------- 
 El nuevo valor de errormensaje es : $errorMessage
 En caso de que el sistema detecte varios errores podria arreglarlos a una LISTA """);
  
 errorMensaje={125,"Usuario no encontrado ", True,-1025.16,'A'};
 print("""------------------------------------------- 
 El nuevo valor de errormensaje es : $errorMessage
 O incluso como un conjunto (SET) de datos. """);
  errorMensaje=()=>true;
  
 print("""------------------------------------------- 
 El ultimo cambio a errorMensaje es  : $errorMessage
 Que en este caso es el resultado de una Funcion  """);
}