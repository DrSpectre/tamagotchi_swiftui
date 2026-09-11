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
        Text("Su nombre: \(controlador_tamagotchi.tamagotchi.nombre)")
        
        Text("Hambre actual: \(controlador_tamagotchi.tamagotchi.hambre)")
        Text("Cansancio: \(controlador_tamagotchi.tamagotchi.cansancio)")
        Text("Limpio: \(controlador_tamagotchi.tamagotchi.limpio)")
        Text("Edad: \(controlador_tamagotchi.tamagotchi.edad)")
        
        
        MascotaEstado()
        
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
        
        Button("Actualizar tamagotchi"){
            controlador_tamagotchi.actualizar_medidores()
        }
        
        Button("Alimentar"){
            controlador_tamagotchi.alimentar()
        }
    }
}

#Preview {
    PantallaInicial()
        .environment(ControladorGeneral())
}


