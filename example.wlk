object paquete{
	var property estaPagado = true // modificar, es independiente o?
	var property precioDelPaquete = 10 //lo inicializo
	
	method elPaquetePuedeSerEntregadoPor(mensajero){
		return self.estaPagado() && destino.puedeLLegar(mensajero)
	}
	//el mensaje deberia responder (true/false) si el paquete 
	//puede ser entregado por una persona x al determinado destino 
	var property destino = laMatrix //¿es un atributo? en si  puede cambiar entre broclin y la matrix
}
object jeanGray{
	var property pesoTotal = 65
	var property puedeLlamar = true
	 
}
object neo{
	var property pesoTotal = 0
	var property puedeLlamar = true
	var property tieneCredito = true //propiety
	method puedeLlamar() = puedeLlamar == tieneCredito //siento que puede simplemente ser un mensaje y no atributo
}
object saraConnor{
	var property peso = 70
	var property pesoTotal = 0
	//var pesoConCamion = 100
	var property puedeLlamar = true
	var property vehiculo = camion
	method pesoTotal(){
		return self.calcularPesoTotal()
	}
	method calcularPesoTotal(){
		return self.peso() + vehiculo.pesoVehiculo() 
}
}
object brooklyn{
	method puedeLLegar(mensajero){
		return mensajero.pesoTotal() <= 1000
	}
}
object laMatrix {
	method puedeLlegar(mensajero) {
		return mensajero.puedeLlamar()
	}
}
object camion{
	const pesoInicial = 500
	var pesoVehiculo = 0
	method pesoConAcoplado(cantidadDeAcoplado){
		pesoVehiculo = cantidadDeAcoplado * pesoInicial
	}
}
object moto{
	var property pesoVehiculo = 100
}
