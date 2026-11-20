abstract class Animal implements Comparable<Animal>{
  final String nombre;
  final int edad;

  Animal(this.nombre, this.edad);

  void emitirSonido();

  void mostrarFicha() {
    print("$nombre - $edad años");
  }

  @override
  int compareTo(Animal a){
   return nombre[0].compareTo(a.nombre[0]);
  }
}
