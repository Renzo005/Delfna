object delfina {
	var diversion = 0
	var enLaMano = play
	method consolaEnUso() {return enLaMano}
	method diversion() {return diversion}
	method agarrar(consola) {enLaMano = consola}
	method jugar(videojuego) {diversion = diversion + videojuego.diversion() 
			enLaMano.usar()
	}
}

object play {
	method jugabilidad(){return 10}
	method usar(){}
}

object portatil {
	var bateria = 100
	method cargarBateria(){bateria = 100}
	method jugabilidad(){
		if(bateria > 15){
			return 8
		}else{
			return 1
		}
	}
	method usar(){bateria = bateria - 85}
}

object pokemon {
	method diversion() { 		
		return delfina.consolaEnUso().jugabilidad() * 10
	}
}

object arkanoid {
	method diversion() {return 50}
}

object mario {
	method diversion() { 
		return if (delfina.consolaEnUso().jugabilidad() < 5 ){
			 15
		}else{
			 100
		}
	}
}
 
