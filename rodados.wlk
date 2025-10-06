class Corsa { //class corsa noes un objeto, es un moldes para asignar objetos del mismo tipo.
    const color

    method capacidad() = 4
    method velMax() = 150
    method peso() = 1300 
    method color() = color 
}

class Kwid {
    const tanqueAdicional

    method capacidad() = if(tanqueAdicional) 3 else 4
    method velMax() = if(tanqueAdicional) 120 else 110
    method peso() = 1200 + if(tanqueAdicional) 150 else 0
    method color() = azul
}

class Especial {
    const property capacidad
    const property velMax
    const peso   
    const color

    method peso() = peso
    method color() = color 
}

object trafic {
    var  interior = comodo
    var  motor = pulenta

    method capacidad() = interior.capacidad()
    method velMax() = motor.velMax() 
    method peso() = 4000 + interior.peso() + motor.peso()
    method color() = blanco

    method cambioInterior(nuevoInterior) {
        interior = nuevoInterior
    }
    method cambioMotor(nuevoMotor) {
        motor = nuevoMotor
    }
}

object comodo {
    method capacidad() = 5
    method peso() = 700  
}

object popular {
    method capacidad() = 12 
    method peso() = 1000 
}

object pulenta {
    method peso() = 800
    method velMax() = 130  
}

object bataton {
    method peso() = 500
    method velMax() = 80  
}



object blanco {
  
}
object azul {
  
}

object rojo {
  
}

object verde {
  
}