import personajes.*
import autos.*

object lasVegas {
  var lugarHomenajeado = null
  
  method lugarHomenajeado() = lugarHomenajeado // Get 
  
  method lugarHomenajeado(unLugar) {
    // Set
    lugarHomenajeado = unLugar
  }
  
  method requisito() = self.lugarHomenajeado().requisito()
  
  method souvenir() = self.lugarHomenajeado().souvenir()
  
  method consecuencia() = self.lugarHomenajeado().consecuencia()
}

object paris {
  method souvenir() = "llaveroTorreEifel"
  
  method requisito() = luke.vehiculo().combustible() > 10
  
  method consecuencias() {
    luke.vehiculo().viaja(10)
  }
}

object buenosAires {
  var presidente = milei
  
  method presidente() = presidente
  
  method presidente(nuevoPresidente) {
    presidente = nuevoPresidente
  }
  
  method souvenir() {
    if (self.presidente().partido() == "LLA") {
      return "mateConYerba"
    } else {
      return "mateSinYerba"
    }
  }
  
  method requisito() = luke.vehiculo().esRapido()
  
  method consecuencias() {
    
  }
}

object milei {
  var peso = 90
  var peluca = true
  var partido = "LLA"
  
  method partido() = partido
}

object albertito {
  var partido = "UnionPorLaPatria"
}

object bagdag {
  var souvenir = "ArmaDeDestruccionMasiva"
  
  method souvenir() = souvenir
  
  method souvenir(nuevoSouvenir) {
    souvenir = nuevoSouvenir
  }
  
  method consecuencia() {
    
  }
  
  method requisito() = true
}

object uruguay {
  method hayInvasionDeCanguros() = null
  
  method souvenir() {
    if (self.hayInvasionDeCanguros()) {
      return "0CopasDelMundo"
    } else {
      return "4CopasDelMundo"
    }
  }
  
  method requisito() = not luke.vehiculo().esRapido()
  
  method consecuencias() {
    luke.vehiculo().viaja(luke.vehiculo().combustible())
  }
}