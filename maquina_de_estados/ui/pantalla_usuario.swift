//
//  pantalla_usuario.swift
//  maquina_de_estados
//
//  Created by Jadzia Galletas on 07/09/26.
//
import SwiftUI

struct PantallaInicial: View {
    @State var controlador_tamagotchi: ControladorGeneral = ControladorGeneral()
    
    @State var nombre_nuevo = ""
    
    var body: some View {
        Text("Su nombre: \(controlador_tamagotchi.tamagotchi.nombre)")
        
        if(controlador_tamagotchi.tamagotchi.esta_vivo){
            Text("Tu tamagotchi esta vivo.")
        }
        else {
            Text("ESTA MUERTO Y TU LO MATASTE")
        }
        
        
        TextField("place holder: Nombre nuevo de tu tamagotchi", text: $nombre_nuevo)
        Button("cambiar nombre"){
            controlador_tamagotchi.cambiar_nombre(nombre_nuevo)
        }
        
        HStack{
            Button("Dale con la pala"){
                controlador_tamagotchi.matar()
            }
            
            Spacer()
            
            Button("Resucitar") {
                // controlador_tamagotchi.revivir()
            }
        }
    }
}

#Preview {
    PantallaInicial()
}


