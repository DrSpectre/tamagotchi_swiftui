//
//  generico.swift
//  maquina_de_estados
//
//  Created by Jadzia Galletas on 15/09/26.
//

protocol Comandos { }

enum ComandosUI: Comandos{
    case abrir
    case cerrar
}

enum ComandosBarra: Comandos{
    case otra_cosa
    case mas_cosas
}


enum ComandosTamagotchi: Comandos{
    case matar
    case alimentar(cantidad: Int)
    case divertir(cantidad: Int)
}

let comando = ComandosTamagotchi.alimentar(cantidad: 100)
