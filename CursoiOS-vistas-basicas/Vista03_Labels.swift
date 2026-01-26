//
//  Vista03_Labels.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 19/1/26.
//

import SwiftUI

struct Vista03_Labels: View {
    var body: some View {
        VStack {
            Text("Etiquetas")
            Divider()
            
            // de una froma sencilla
            Label("Etiqueta + simbolo de mapa", systemImage: "mappin.and.ellipse")
                .labelStyle(.iconOnly)
                .padding()
            
            // custimizarlo por cada una de las partes
            Label{
                Text("texto de etiqueta 01")
                    .foregroundStyle(Color.red)
            } icon: {
                Image(systemName: "mappin.and.ellipse")
                    .foregroundColor(.red)
                    .background(Color.yellow)
                    .opacity(0.5)
            }
            .padding(15)
            .background(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.2))
            .border(Color.black, width: 3)
            
        }
    }
}

#Preview {
    Vista03_Labels()
}
