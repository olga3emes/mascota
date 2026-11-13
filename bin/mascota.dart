import 'package:mascota/database/supabase_client.dart';
import 'package:mascota/models/cliente.dart';
import 'package:mascota/models/mascota.dart';
import 'package:mascota/models/pedido.dart';
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

calcularVenta(precio:500, descuento:30);


calcularVenta(precio:500);





  // var supabase = DatabaseConfig.client;

  // final mascotas = await supabase
  // .from('mascotas')
  // .select(); 

  // print(mascotas);

}