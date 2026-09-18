//
//  sistema_comandos.swift
//  maquina_de_estados
//
//  Created by Jadzia Galletas on 18/09/26.
//
protocol Comando {}

protocol ProcesarComandos{
    func procesar_comando(_ comando: Comando) -> Bool
}
