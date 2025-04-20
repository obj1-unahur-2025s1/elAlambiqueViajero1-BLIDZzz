import personajes.*
import lugares.*

object alambiqueVeloz {
  var combustible = 100
  
  method codigo() = 0
  
  method combustible() = combustible
  
  method viaja(unaDistancia) {
    // Asumo que el auto consume 1L de combustible por KM recorrido
    combustible -= unaDistancia
  }
  
  method esRapido() = true
}

object elSuperChatarraEspecial {
  var combustible = 150
  var balas = 16
  
  method combustible() = combustible
  
  method balas() = balas
  
  method codigo() = 1
  
  method viaja(unaDistancia) {
    // Asumo que el auto consume 1L de combustible por KM recorrido
    combustible -= unaDistancia
  }
  
  method esRapido() = false
  
  method numeroCañones() = 4
  
  method puedeDisparar() = (balas > 4) and (combustible > 4)
  
  method dispara() {
    balas -= 4
    self.combustibleUsado(4)
  }
  
  method combustibleUsado(numeroBalas) {
    combustible -= numeroBalas
  }
}

object laAntiguallaBlindada {
  var combustible = 200
  var cantidadGangsters = 6
  
  method codigo() = 2
  
  method cantidadGangsters() = cantidadGangsters
  
  method combustible() = combustible
  
  method viaja(unaDistancia) {
    // Asumo que el auto consume 1L de combustible por KM recorrido
    combustible -= unaDistancia
  }
  
  method esRapido() {
    self.cantidadGangsters() <= 3
  }
  
  method gangsterCaido() {
    cantidadGangsters -= 1
  }
}

object gangsters {
  method peso() = 75
}

object superConvertible {
  var convertidoEn = null
  
  method convertidoEn() = convertidoEn
  
  method convertidoEn(nuevoConvertido) {
    convertidoEn = nuevoConvertido
  }
  
  method combustible() = self.convertidoEn().combustible()
  
  method viaja(unaDistancia) {
    // Asumo que el auto consume 1L de combustible por KM recorrido
    self.convertidoEn().viaja(unaDistancia)
  }
  
  method esRapido() = self.convertidoEn().esRapido()
  
  // Si se transforma en El Súper Chatarra Espacial
  method balas() {
    if (self.convertidoEn().codigo() == 1) {
      return self.convertidoEn().balas()
    } else {
      return null
    }
  }
  
  method numeroCañones() {
    if (self.convertidoEn().codigo() == 1) {
      return self.convertidoEn().numeroCañones()
    } else {
      return null
    }
  }
  
  method puedeDisparar() {
    if (self.convertidoEn().codigo() == 1) {
      return self.convertidoEn().puedeDisparar()
    } else {
      return null
    }
  }
  
  method dispara() {
    if (self.convertidoEn().codigo() == 1) self.convertidoEn().dispara()
  }
  
  // Si se transforma en La Antigualla Blindada
  method cantidadGangsters() {
    if (self.convertidoEn().codigo() == 2) {
      return self.convertidoEn().cantidadGangsters()
    } else {
      return null
    }
  }
  
  method gangsterCaido() {
    if (self.convertidoEn().codigo() == 2) self.convertidoEn().gansterCaido()
  }
}