//
//  pantalla_de_btonoes.swift
//  maquina_de_estados
//
//  Created by Jadzia Galletas on 30/09/26.
//
import SwiftUI


struct PantallaBasica3: View {
    @State var estado_boton: Bool = false
    
    var body: some View {
        BotonAdvertencia(boton_pulsado: $estado_boton)
    }
}

#Preview {
    PantallaBasica3()
}
