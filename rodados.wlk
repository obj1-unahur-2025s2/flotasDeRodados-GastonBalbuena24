class Corsa { //class corsa noes un objeto, es un moldes para asignar objetos del mismo tipo.
    var property color 

    method capPasajeros() = 4
    method velMax() = 150
    method peso() = 1300 
}

class Kwid {
    var property tanqueAdicional

    method capPasajeros() = if(tanqueAdicional) 3 else 4
    method velMax() = if(tanqueAdicional) 120 else 110
    method peso() = 1200 + if(tanqueAdicional) 150 else 0
    method color() = 'azul'
}

object trafic {
    var property interior = interiorComodo
    var property motor = pulenta

    method capPasajeros() = interior.capPasajeros()
    method velMax() = motor.vel() 
    method peso() = 4000 + interior.peso() + motor.peso()
    method color() = 'blanco' 
}

object interiorComodo {
    method capPasajeros() = 5
    method peso() = 700  
}

object interiorPopular {
    method capPasajeros() = 12 
    method peso() = 1000 
}

object pulenta {
    method peso() = 800
    method vel() = 130  
}

object bataton {
    method peso() = 50
    method vel() = 80  
}

class Especial {
    const property peso  
    var property color
    var property capPasajeros
    var property velMax  
}



