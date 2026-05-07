object luke {

  var vehiculo = alambiqueVeloz
  var recuerdoActual = null
  var lugaresVisitados = 0

  method cambiarVehiculo(nuevoVehiculo) {
    vehiculo = nuevoVehiculo
  }

  method viajarA(unDestino) {
    if (unDestino.puedeIr(vehiculo)) {
      lugaresVisitados = lugaresVisitados + 1
      recuerdoActual = unDestino.recuerdo()
      vehiculo.viajar()
    }
  }

  method cantidadDeLugaresVisitados() {
    return lugaresVisitados
  }

  method ultimoRecuerdo() {
    return recuerdoActual
  }

  method resetear() {
  lugaresVisitados = 0
  recuerdoActual = null
}
}

object alambiqueVeloz {

  var combustible = 90

  method tieneCombustible() {
    return combustible > 100
  }

  method esRapido() {
    return true
  }

  method viajar() {
    combustible = combustible - 10
  }
}

object superChatarra {

  var combustible = 500

  method tieneCombustible() {
    return combustible > 100
  }

  method esRapido() {
    return false
  }

  method viajar() {
    combustible = combustible - 100
  }
}

object paris {

  method puedeIr(vehiculo) {
    return vehiculo.tieneCombustible()
  }

  method recuerdo() {
    return llavero
  }
}

object buenosAires {

  method puedeIr(vehiculo) {
    return vehiculo.esRapido()
  }

  method recuerdo() {
    return mate
  }
}

object llavero {}
object mate {}
