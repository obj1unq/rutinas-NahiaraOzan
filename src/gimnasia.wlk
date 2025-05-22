class Rutina { 


    method caloriasQuemadas(tiempo) {
        return 100 * (tiempo - self.descanso(tiempo)) * self.intensidad()
    }

    method intensidad()

    method descanso(tiempo) 
}

class Running inherits Rutina {
    var property intensidad //solo genera getter el property

    override method descanso(tiempo) {
        return if( tiempo > 20 ) {
            5 
        }else{
            2
        } 2 
    }
}

class Maraton inherits Running {

    override method caloriasQuemadas(tiempo) {
        return super(tiempo) * 2
    } 
}

class Remo inherits Rutina {

    override method intensidad() {
        return 1.3
    }
    override method descanso(tiempo) {
        return tiempo.div(5)
    }
}

class RemoCompeticion inherits Remo { //(intensidad = 1.7)

    override method intensidad() {
        return 1.7
    }
    override method descanso(tiempo) {
        return (super(tiempo) - 3).max(2)
    }
}