object feroz{
	var peso = 10
	
	method estaSaludable(){return peso.between(20,150)}
	
	method peso(){return peso}
	
	method aumentaDePeso(cantidad){peso = peso + cantidad}
	
	method disminuyeDePeso(cantidad){peso = peso - cantidad}
	
	method sufreUnaCrisis(){peso = 10}
	
	method comerAlgo(comida) {peso = peso + ((comida.peso()*10) / 100)}	
	
	method correrAUnLugar() {self.disminuyeDePeso(1)}
	
	method soplarCasa(){self.disminuyeDePeso(casa.resistencia())}
} 


object caperucita{
	
	var peso = 60
	
	method peso(){return peso}
	
	method canastaDeManzanas(manzanas) {peso = peso + self.cantidadDeManzanas(manzanas)}
	
	method cantidadDeManzanas(cantidad){ return 0.2 * cantidad}
	
	method seLeCaeUnaManzana() {peso = peso - self.cantidadDeManzanas(1)}
}


object abuelita{
	var peso = 50
	
	method peso(){return peso}
}


object cazador{
	var  peso = 80
	
	method peso(){return peso}
	
	method comerAFeroz(){peso = peso + ((feroz.peso()*80) / 100)} 
	
	method generarUnaCrisisAFeroz(){feroz.sufreUnaCrisis()}
}

object casa {
	var resistencia 
	var materialDeLaCasa 
	
	method resistencia(){return resistencia}
	
	method materialDeLaCasa(material){materialDeLaCasa = material}
	
	method resistenciaDeLaCasa(material){resistencia = material.resistencia()}
}

object paja{
	var resistencia = 0
	
	method resistencia(){return resistencia}
}

object madera{
	var resistencia = 5
	
	method resistencia(){return resistencia}
}

object ladrillo{
	var resistencia
	var cantidadDeLadrillos
	
	method resistencia(){resistencia = resistencia + self.cantidadDeLadrillos() * 2}
	
	method cantidadDeLadrillos(){ return cantidadDeLadrillos}
	
	method aumentarCantidadDeLadrillos(ladrillos){cantidadDeLadrillos = cantidadDeLadrillos + ladrillos} 
}