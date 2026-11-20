import 'package:mascota/models/animal.dart';

class Ave extends Animal{

  Ave(String nombre, int edad):super(nombre,edad);

  @override
  void emitirSonido() {
    print('Pio pio');
  }
}