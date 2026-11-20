import 'package:mascota/database/supabase_client.dart';
import 'package:mascota/models/animal.dart';
import 'package:mascota/models/ave.dart';
import 'package:mascota/models/cliente.dart';
import 'package:mascota/models/gato.dart';
import 'package:mascota/models/mascota.dart';
import 'package:mascota/models/pedido.dart';
import 'package:mascota/models/perro.dart';
import 'package:mascota/models/pez.dart';
import 'package:mascota/services/ventas_service.dart';

void main() async {
  final mascota = Mascota(3, 'Billy', 'Perro Salchicha', 1, 800.0, false);
  print(mascota);
  mascota.mostrarInformacion();

  final alejandro = Cliente(1, 'Alejandro C.', 'ale@email.com');
  print(alejandro);

  final aleCompraBilly = Pedido(1, alejandro, mascota, DateTime.now());
  print(aleCompraBilly.fecha);

  final vacia = Mascota.vacia();
  print(vacia);

  final ventasService = VentasService();

  var precioRebajado = ventasService.calcularDescuento(
    mascota.precio,
    porcentaje: 0.10,
  );

  print(precioRebajado);

  var finalConIVA = ventasService.calcularIVA(precioRebajado);

  print("Billy cuesta $finalConIVA");

  List<Animal> animales = [
    Perro('Coco', 2, "Bichón maltés"),
    Gato("Luna", 1),
    Ave("Comunista", 1),  
    Pez("Nathaniel", 1),
  ];

  if( animales[0] is Perro){
    print("Es un Perro ${animales[0].nombre}");
  }

  for (final animal in animales){
    animal.mostrarFicha();
  }
  
  List<String>inventario= ['Bambi', 'Tambor', 'Flor'];  
  inventario.add("Gus Gus");

  inventario.addAll(["Toulouse", "Marie", "Berlioz"]);

  print(inventario.toString());

  inventario.remove('Bambi');

  var mofeta = inventario.firstWhere((m)=>m=="Flor");

  var comienzaCont = inventario.where((m)=>m[0]=="T").toList();

  var inventarioMayusculas = inventario.map((m)=>m.toUpperCase()).toList();
  inventario.add("Marie");
  inventario.sort((a, b) => a[0].compareTo(b[0]),);

  Set<String>conjuntoInventario = inventario.toSet();

 print("Mofeta $mofeta");

 print(comienzaCont.toString());
 print(inventarioMayusculas.toString());
 print(inventario.toString());

 print("Conjunto:${conjuntoInventario.toString()}");

Map<String,int> games = {'GTAVI': 0, 'AnimalCrossing': 10,
 'LosSims2': 20, 'ZeldaOcarinaOfTime': 2};

  games['PokemonPokopia']=4;

  print(games.toString());

  games.forEach((nombre,cantidad){
    print('$nombre -> $cantidad');
  });

 print( games.containsKey('ZeldaOcarinaOfTime'));

  print(games.values.any((m) => m <=0));//true
  print(games.values.every((v)=> v >0));//false

  // var supabase = DatabaseConfig.client;

  // final mascotas = await supabase
  // .from('mascotas')
  // .select();

  // print(mascotas);
}
