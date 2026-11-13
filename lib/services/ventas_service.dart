double calcularIVA(double precio){
  return precio*0.21;
}

double cacularPrecioFinal(double precio, double descuento){
  return precio - descuento;
}

double calcularVenta({required double precio,  double descuento=0}){
  return precio - descuento;
}

double calcularPrecioConIVA(double precio,{double iva = 0.21}){

  return precio*(1+iva);
}
