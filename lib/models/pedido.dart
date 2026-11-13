
import 'package:mascota/models/cliente.dart';
import 'package:mascota/models/mascota.dart';

class Pedido {

int id;
Cliente cliente;
Mascota mascota;
DateTime fecha;

Pedido(this.id, this.cliente, this.mascota, this.fecha);



}