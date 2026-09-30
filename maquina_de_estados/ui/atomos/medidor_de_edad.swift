//
//  medidor_de_edad.swift
//  maquina_de_estados
//
//  Created by Jadzia Galletas on 30/09/26.
//
import SwiftUI

enum EstadosMedidorDeEdad {
    case vacio
    case mayor
    case menor
    case error
}


struct MedidorDeEdad: View {
    @Binding var campo: String
    @State var estado: EstadosMedidorDeEdad = .vacio
    
    var body: some View {
        // Text("Estado actual: \(estado)")
        TextField("Por favor coloca tu edad", text: $campo)
            .onSubmit {
                if campo.isEmpty{
                    estado = .vacio
                    return
                }
                if let edad_numero = Int(campo){
                    if edad_numero >= 18{
                        estado = .mayor
                    }
                    else {
                        estado = .menor
                    }
                }
                else {
                    estado = .error
                }
            }
        
        switch(estado){
            case .vacio:
                Text("por favor introduce tu edad")
                
            case .mayor:
                Text("")
                
            case .menor:
                Text("Tu mamam sabe donde estas?")
                
            case .error:
                Text("ERROR: ESO NO ES UN NUMERO")
                    .foregroundStyle(Color.red)
        }
    }
}

#Preview {
    @Previewable @State var texto: String = ""
    
    MedidorDeEdad(campo: $texto)
}
