import rodados.*

class Dependencia {
    const flota = [] 
    const empleados



    method agregarAFlota(rodado) {flota.add(rodado)} 
    method quitarDeFlota(rodado) {flota.remove(rodado)}
    method pesoTotalFlota() = flota.sum({x=>x.peso()})

    method estaBienEquipada() = flota.size() >= 3 and flota.all({x=>x.velocidad() >= 100})

    method capacidadTotalEnColor(color) = flota.filter({x=>x.color()==color}).sum({x=>x.capacidad()})

    method colorDelRodadoMasRapido() = flota.max({x=>x.velMax()}).color()

    method capacidadTotal() {
        return flota.sum({x=>x.capacidad()})
    } 
    method capacidadFaltantes() = empleados - self.capacidadTotal()

    method esGrande() = empleados >= 40 and flota.size() >= 5 
}