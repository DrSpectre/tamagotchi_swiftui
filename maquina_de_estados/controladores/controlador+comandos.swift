//
//  controlador+comandos.swift
//  maquina_de_estados
//
//  Created by Jadzia Galletas on 18/09/26.
//
import ARKit



enum ComandoTamagotchi: Comando{
    case darle_un_dulce
    case darle_un_sape
    case darle_brocolis
}

extension ControladorGeneral: ProcesarComandos{
    func procesar_comando(_ comando: Comando) -> Bool {
        guard let comando = comando as? ComandoTamagotchi else {
            return false
        }
        
        switch(comando){
            case .darle_un_dulce:
                entretener()
                alimentar()

            case .darle_un_sape:
                adormilar()
                enojar()
                
            case .darle_brocolis:
                alimentar()
                enojar()
        }
        
        return true
    }
}
