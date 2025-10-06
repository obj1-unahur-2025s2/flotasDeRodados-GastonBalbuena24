import rodados.*

class Dependencia {
    const property flota = [] 
    var property empleados

    method agregarAFlota(rodado) {flota.add(rodado)} 
    method quitarDeFlota(rodado) {flota.remove(rodado)}
    method pesoTotalFlota() = flota.sum({x=>x.peso()})

    method estaBienEquipado() = self.tienAlMenosRodados(3) && self.todanVanAlMenosAl(100)
    method tienAlMenosRodados(unValor) = flota.size() >  unValor
    method todanVanAlMenosAl(km) = flota.all({x=>x.velMax() >= km}) 

    method capacidadTotalEnColor(color) = self.flotaEnColor(color).sum({x=>x.capPasajeros()})
    method flotaEnColor(color) = flota.filter({x=>x.color() == color})

    method colorDelRodadoMasRapido() = flota.max({x=>x.velMax()}).color()

    method capacidadFaltante() = (empleados - self.capacidadFlota()).max(0)
    method capacidadFlota() = flota.sum({x=>x.capPasajeros()}) 
    method esGrande() = empleados >= 40  && self.tienAlMenosRodados(5)
  
}