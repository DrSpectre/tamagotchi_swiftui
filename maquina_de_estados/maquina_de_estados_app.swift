//
//  maquina_de_estadosApp.swift
//  maquina_de_estados
//
//  Created by Jadzia Galletas on 07/09/26.
//

import SwiftUI

@main
struct MaquinaDeEstadosApp: App {
    @State var control: ControladorGeneral = ControladorGeneral()
    
    var body: some Scene {
        WindowGroup {
            PantallaInicial()
                .environment(control)
        }
    }
}
