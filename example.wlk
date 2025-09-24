object paquete{
	var estaPagado = true
	method estaPagado(_estaPagado) {
	  estaPagado = _estaPagado
	}
	method estaPagado() { return  estaPagado}
	
	method elPaquetePuedeSerEntregadoPor(mensajero, destino){
		return self.estaPagado() && destino.puedeLLegar(mensajero)
	}
	//el mensaje deberia responder (true/false) si el paquete 
	//puede ser entregado por una persona x al determinado destino 
	
}
object jeanGray{
	const peso =  65
	const puedeLLamar = true
	method pesoTotal() {
        return peso
    }

    method puedeLLamar() {
        return puedeLLamar
    }
}
object neo{
	const peso = 0 
	var property tieneCredito = true //propietyproperty porque quiero modificar en cualquier momento y neceito obtener el valor

	method puedeLLamar() {return  tieneCredito} 
	method pesoTotal() {
	  return peso
	}
}
object saraConnor{
	var property peso = 70
	var property vehiculo = camion

	method pesoTotal(){
		return self.peso() + vehiculo.pesoVehiculo() 
	}
	method puedeLLamar(){
		return false
}
}
object brooklyn{
	method puedeLLegar(mensajero){
		return mensajero.pesoTotal() <= 1000
	}
}
object laMatrix {
	method puedeLLegar(mensajero) {
		return mensajero.puedeLLamar()
	}
}
object camion{
	const pesoInicial = 500
	const pesoDeAcoplado = 500 //como  peso de acomplado nunca cambia se puede poner directamente en la funcion solo 500 
	var pesoVehiculo = 0
	var property cantidadDeAcoplados = 0

	method pesoDeAcoplado() = pesoDeAcoplado 
	method pesoConAcoplado(){
		pesoVehiculo = pesoInicial + (cantidadDeAcoplados * pesoDeAcoplado )
	}

	method pesoVehiculo(){ return pesoVehiculo} 
}
object moto{
	method pesoVehiculo() {
    return 100
  }// en vez de hacerlo atributo y crearle su getter, preferi que sea directamente un metodo
}
