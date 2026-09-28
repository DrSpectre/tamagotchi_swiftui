//
//  pantalla_usuario.swift
//  maquina_de_estados
//
//  Created by Jadzia Galletas on 07/09/26.
//
import SwiftUI

struct PantallaInicial: View {
    @Environment(ControladorGeneral.self) var controlador_tamagotchi
    
    @State var nombre_nuevo = ""
    
    var body: some View {
        Text("Su Estado: \(controlador_tamagotchi.estado)")
        
        
        MascotaEstado()
        
        
        TextField("place holder: Nombre nuevo de tu tamagotchi", text: $nombre_nuevo)
        
        Button {
            controlador_tamagotchi.cambiar_nombre("hola")
        }
        label: {
            VistaJeep(texto: "Cambiar nombre", imagen: "imagen_2")
        }
        .buttonStyle(.plain)
        .frame(height: 50)
    
        Button("cambiar nombre"){
            controlador_tamagotchi.cambiar_nombre(nombre_nuevo)
        }
        .buttonStyle(.plain)
        
        HStack{
            Button("Dale con la pala"){
                controlador_tamagotchi.matar()
            }
            
            Spacer()
        }
        
        Button("Actualizar tamagotchi"){
            controlador_tamagotchi.actualizar_medidores()
        }
        
        Button("Alimentar"){
            controlador_tamagotchi.alimentar()
        }
        
        Button("Darle un sape"){
            let comando = ComandoTamagotchi.darle_un_sape
            
            controlador_tamagotchi.procesar_comando(comando)
        }
    }
}

#Preview {
    PantallaInicial()
        .environment(ControladorGeneral())
}


