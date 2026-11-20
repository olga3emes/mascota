import 'package:mascota/models/animal.dart';

class Perro extends Animal{
  final String raza;
  Perro(String nombre, int edad,  this.raza):super(nombre,edad);

  @override
  void emitirSonido() {
    print('Guau guau');
  }

  @override
  void mostrarFicha() {
   print('Ficha del Perro: ');
   super.mostrarFicha();
   print("Raza: $raza");
    
  }

}