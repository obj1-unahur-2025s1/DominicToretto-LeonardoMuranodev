import autos.*

object toretto {
    const autos = []

    //Metodos de consulta
    method autos() = autos

    method autosNoEnCondiciones(){
        return autos.filter({auto => not auto.estaEnCondiciones()})
    }

    method autosEnCondiciones(){
        return autos.filter({auto => auto.estaEnCondiciones()})
    }

    method promedioVelMax(){
        return autos.sum({auto => auto.velocidadMaxima()}) / autos.size()
    }

    method masRapido(){
        return self.autosEnCondiciones().max({a => a.velocidadMaxima()})
    }

    method masRapidoEsElDobleDeRapidoDelPromedio(){
        return self.masRapido().velocidadMaxima() > 2 * self.promedioVelMax()
    }

    //Metodos de indicacion
    method comprar(unAuto){
        autos.add(unAuto)
    }

    method mandarAutosAlTaller(){
        taller.recibirAutos(self.autosNoEnCondiciones())
    }

    method pruebasDeVelocidad(){
        autos.forEach({auto => auto.pruebaDeVelocidad()})
    }

    method finalDeTemporada(){
        autos.clear()
    }
}

object taller {
    const autos = []

    method autos() = autos

    //Metodos de indicacion
    method recibirAutos(unaLista){
        autos.addAll(unaLista)
    }

    method repararAutos(){
        autos.forEach({auto => auto.reparar()})
        autos.clear()
    }
}