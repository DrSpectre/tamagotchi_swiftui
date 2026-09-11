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
        switch(mascota.estado){
            case .Neutro:
                Rectangle()
                    .foregroundStyle(Color.gray)
            case .Hambriento:
                Rectangle()
                    .foregroundStyle(Color.orange)
                
            case .Inanición:
                Rectangle()
                    .foregroundStyle(Color.red)
            case .Muerte:
                Text("QUE MAS QUIERES SI ESTA MUERTO")
                    .fontWidth(.expanded)
                    .fontWeight(.heavy)
                
            default:
                Text("NO se que paso")
        }
        
    }
}


#Preview {
    MascotaEstado()
        .environment(ControladorGeneral())
}
