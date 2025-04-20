import lugares.*
import autos.*

object luke {
  var souvenir = null
  var lugaresVisitados = 0
  var vehiculo = alambiqueVeloz
  
  method souvenir() = souvenir
  
  method souvenir(nuevoSouvenir) {
    souvenir = nuevoSouvenir
  }
  
  method lugaresVisitados() = lugaresVisitados
  
  method viajo() {
    lugaresVisitados += 1
  }
  
  method viajarA_(unLugar) {
    self.viajo()
    self.souvenir(unLugar.souvenir())
    unLugar.consecuencia()
  }
  
  method puedeViajarA_(unLugar) = unLugar.requisito()
  
  method vehiculo() = vehiculo
}