//
//  vista_ar.swift
//  maquina_de_estados
//
//  Created by Jadzia Galletas on 25/09/26.

import SwiftUI
import RealityKit

struct VistaAR: View {
    var body: some View {
        RealityView{ contenido in
            contenido.camera = .spatialTracking
            
            let cajita = ModelEntity(mesh: .generateBox(size: 1))
            
            let imagen_ar = AnchorEntity(.image(group: "archivos_ar", name: "recurso_1"))
            
            cajita.components.set(InputTargetComponent())
            cajita.components.set(CollisionComponent(shapes: [ShapeResource.generateBox(size: SIMD3<Float>(1, 1, 1))]))
            
            cajita.model?.materials = [SimpleMaterial(color: .red, isMetallic: true)]
            
            cajita.name = "HOLA MUNDO"
            
            cajita.setParent(imagen_ar)
            
            contenido.add(imagen_ar)
        }
        .gesture(
            SpatialTapGesture()
                .targetedToAnyEntity()
                .onEnded{ valor in
                    print("Hey, parece que has pulsado a \(valor.entity.name)")
                    
                }
        )
    }
}

struct PantallaSecundaria: View {
    var entidad: Entity?
    
    var body: some View {
        Text("HOLA MUNDO MI REFERENCIA ES \(entidad?.name)")
    }
}
