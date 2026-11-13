import 'package:mascota/database/supabase_client.dart';
import 'package:mascota/mascota.dart' as mascota;

void main() async {
  
  var supabase = DatabaseConfig.client;

  final mascotas = await supabase
  .from('mascotas')
  .select(); 

  print(mascotas);
}