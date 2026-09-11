//
//  mascota_estado_pantalla.swift
//  maquina_de_estados
//
//  Created by Jadzia Galletas on 11/09/26.
//
import SwiftUI

struct MascotaEstado: View {
    @Environment(ControladorGeneral.self) var mascota
    
    var body: some View {
        Text("El estado de tu mascota es: \(mascota.estado)")
    }
}


#Preview {
    MascotaEstado()
        .environment(ControladorGeneral())
}
