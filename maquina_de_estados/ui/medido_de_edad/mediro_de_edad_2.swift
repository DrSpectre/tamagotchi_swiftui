//
//  medidor_de_edad_2.swift
//  maquina_de_estados
//
// Este utiliza una versión mejorada no vista en clases.
//  Created by Jadzia Galletas on 30/09/26.
//
import SwiftUI

enum EstadosErroresUI{
    case vacio(leyenda: String) // Es usado para idnicar que tenemos una istuacion de un campo vacio y que quermeos decir en ese momento
    case error(leyenda: String) // Es para idnicar una leyenda al comoteer un error
    
    case aceptado // Todo bien
    case denegado // Auqnue no hay error, las ocndicones no permiten continuar. Es menor, tiene una q en su nombre.... cualqueir cosa
}

struct Leyenda: View {
    var estado: EstadosErroresUI = .error(leyenda: "Te falta indicar esta leyenda")
    
    var body: some View {
        switch(estado){
            case .vacio(let leyenda):
                Text(leyenda)
                
            case .error(let leyenda):
                Text(leyenda)
                    .foregroundStyle(Color.red)
                    .backgroundStyle(Color.black)
                    .fontWeight(.bold)
                
            case .aceptado:
                Text("Todo okay")
                
            case .denegado:
                Text("NADA OKAY")
                    .foregroundStyle(Color.red)
        }
    }
}

struct MedirEdad: View {
    @Binding var texto: String
    @Binding var estado: EstadosErroresUI
    
    var body: some View {
        TextField("Colcoa tu edad", text: $texto)
            .onSubmit {
                if texto.isEmpty{
                    estado = .vacio(leyenda: "POr favor colcoa tu edad en numeros")
                    return
                }
                if let edad_numero = Int(texto){
                    if edad_numero >= 18{
                        estado = .aceptado
                    }
                    else {
                        estado = .denegado
                    }
                }
                else {
                    estado = .error(leyenda: "ESO NO ES UN NUMERO")
                }
            }
    }
}

#Preview{
    @Previewable @State var texto: String = ""
    @Previewable @State var estado: EstadosErroresUI = .vacio(leyenda: "HOLA")
    
    MedirEdad(texto: $texto, estado: $estado)
    Leyenda(estado: estado)
}


