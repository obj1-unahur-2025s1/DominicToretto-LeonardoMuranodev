import dominicToretto.*

//autos
object ferrari {
    var motor = 87

    //Metodos de consulta
    method estaEnCondiciones() = motor >= 65

    method velocidadMaxima() = if(motor > 75) 125 else 110

    //Metodos de indicacion
    method reparar() {motor = 100}

    method pruebaDeVelocidad() {motor = 0.max(motor - 30)}
}

object flechaRubi {
    var combustible = 100
    var property tipoCombustible = gasolina
    var color = azul

    //Metodos de consulta
    method estaEnCondiciones(){
        return combustible > tipoCombustible.nivelMinimo() && color.esAptoParaCorrer()
    }

    method velocidadMaxima() = tipoCombustible.velMaxCombustible(combustible * 2)

    //Metodos de indicacion
    method reparar() {
        combustible *= 2
        color = color.cambiarColor()
    }

    method pruebaDeVelocidad() {combustible = 0.max(combustible - 5)}
}

object intocable {
    var estaEnCondiciones = true

    //Metodos de consulta
    method estaEnCondiciones() = estaEnCondiciones

    method velocidadMaxima() = 45

    //Metodos de indicacion
    method reparar() {
        estaEnCondiciones = true
    }
    method pruebaDeVelocidad(){
        estaEnCondiciones = false
    }
}

//auto inventado
object dodgeChargerRT {
    var cantidadDeNitros = 3
    var cantidadGargantasDelMotorV8 = 2

    //Metodos de consulta
    method estaEnCondiciones() = cantidadGargantasDelMotorV8 >= 2 && cantidadDeNitros >= 3

    method velocidadMaxima() = 80 + cantidadDeNitros * 35 + cantidadGargantasDelMotorV8 * 80

    //Metodos de indicacion
    method reparar() {
        cantidadDeNitros = 3
        cantidadGargantasDelMotorV8 = 2
    }
    method pruebaDeVelocidad(){
        cantidadDeNitros -= 1
        cantidadGargantasDelMotorV8 -= 2
    }
}

//Combustibles
object gasolina {
    method nivelMinimo() = 85

    method velMaxCombustible(unNumero) = unNumero + 10
}

object nafta {
    method nivelMinimo() = 50

    method velMaxCombustible(unNumero) = unNumero * 2 - (unNumero * 2) * 0.1
}

object nitrogeno {
    method nivelMinimo() = 0

    method velMaxCombustible(unNumero) = (unNumero * 2) * 10
}

//Colores
object azul {
    method cambiarColor() = verde

    method esAptoParaCorrer() = false
}

object rojo {
    method cambiarColor() = azul

    method esAptoParaCorrer() = true
}

object verde {
    method cambiarColor() = rojo

    method esAptoParaCorrer() = false
}