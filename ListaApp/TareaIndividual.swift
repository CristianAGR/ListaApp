//
//  TareaIndividual.swift
//  ListaApp
//
//  Created by ISSC_611_2023 on 19/04/23.
//

import SwiftUI

struct TareaIndividual: View {
    @ObservedObject var task: Tarea;
    var body: some View {
        HStack{
            Text(task.titulo)
            Spacer()
            if task.completado{
                Image(
                    systemName: "checkmark.circle.fill")
                    .foregroundColor(.green)
                    .onTapGesture {
                        task.completado.toggle()
                    }
            } else {
                Image(
                    systemName: "circle")
                    .foregroundColor(.red)
                    .onTapGesture {
                        task.completado.toggle()
                    }
            }
        }
    }
}
