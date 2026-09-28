//
//  vista_jeep.swift
//  maquina_de_estados
//
//  Created by Jadzia Galletas on 21/09/26.
//
import SwiftUI

struct VistaJeep: View {
    var texto: String
    var imagen: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(Color.gray)
            
            HStack{
                Image(imagen)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                
                Spacer()
                Text(texto)
                Spacer()
                Circle()
                    .foregroundStyle(Color.pink)
            }
            .frame(height: 50)
        }
        .frame(height: 75)
    }
}

#Preview {
    VistaJeep(texto: "Place holder", imagen: "imagen_1")
}
