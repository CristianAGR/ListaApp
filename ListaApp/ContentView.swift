//
//  ContentView.swift
//  ListaApp
//
//  Created by ISSC_611_2023 on 19/04/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var listaTareas = ListaTareas()
    var body: some View {
        //TareaIndividual(task: Tarea(titulo: "Ir al baño", completado: true))
        VStack{
            NavigationView{
                List{
                    ForEach(listaTareas.tareas) {
                        tarea in TareaIndividual(task: tarea)
                    }
                }.navigationTitle("Tareas")
            }
                NewTaskView(listaTareas: listaTareas)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
