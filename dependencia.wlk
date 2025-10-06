import rodados.*

class Dependencia {
    const property flota = [] 
    var property empleados

    method agregarAFlota(rodado) {flota.add(rodado)} 
    method quitarDeFlota(rodado) {flota.remove(rodado)}
    method pesoTotalFlota() = flota.sum({x=>x.peso()})

    method estaBienEquipada() = self.tieneAlMenosRodados(3) && self.todanVanAlMenosAl(100)
    method tieneAlMenosRodados(unValor) = flota.size() >  unValor
    method todanVanAlMenosAl(km) = flota.all({x=>x.velMax() >= km}) 

    method capacidadTotalEnColor(color) = self.flotaEnColor(color).sum({x=>x.capacidad()})
    method flotaEnColor(color) = flota.filter({x=>x.color() == color})

    method colorDelRodadoMasRapido() = flota.max({x=>x.velMax()}).color()

    method capacidadFaltante() = (empleados - self.capacidadFlota()).max(0)
    method capacidadFlota() = flota.sum({x=>x.capacidad()}) 
    method esGrande() = empleados >= 40  && self.tieneAlMenosRodados(5) 
}