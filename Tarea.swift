//
//  Tarea.swift
//  ListaApp
//
//  Created by ISSC_611_2023 on 19/04/23.
//

import Foundation

class Tarea: Identifiable, ObservableObject{
    // GENERA un identificador de forma aleatoria que no se repite
    var id = UUID();
    // Trabaja con el wramework de swiftUI
    @Published var titulo: String;
    @Published var completado: Bool;
    
    init(titulo: String, completado:Bool){
        self.titulo = titulo;
        self.completado = completado;
    }
    
    
    
}

class ListaTareas: ObservableObject{
    @Published var tareas:[Tarea] = [
        Tarea (titulo: "Corte de cabello", completado: false),
        Tarea (titulo: "Lavado de auto", completado: true),
        Tarea (titulo: "Correr Profesores", completado: true)
    ]
}
