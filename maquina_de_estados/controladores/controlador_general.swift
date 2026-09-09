//
//  controlador_general.swift
//  maquina_de_estados
//
//  Created by Jadzia Galletas on 07/09/26.
//
import Foundation

@Observable ///
class ControladorGeneral{
    var tamagotchi: Tamagotchi
    
    init(tamaogtchi_a_cargar: Tamagotchi? = nil) {
        if let tamaogtchi_a_cargar = tamaogtchi_a_cargar {
            self.tamagotchi = tamaogtchi_a_cargar
        }
        
        else {
            self.tamagotchi = Tamagotchi(
                nombre: "Inicial", esta_vivo: false,
                edad: 0, hambre: 100, cansancio: 100,
                limpio: 0, aburrido: 0
            )
        }
    }
    
    func cambiar_nombre(_ nombre_nuevo: String) -> Bool{
        if tamagotchi.esta_vivo {
            tamagotchi.nombre = nombre_nuevo
        }
        
        return tamagotchi.esta_vivo
    }
    
    func matar() -> Bool{
        if tamagotchi.esta_vivo{
            tamagotchi.esta_vivo = false
            return true
        }
        
        return false
    }
    
}


