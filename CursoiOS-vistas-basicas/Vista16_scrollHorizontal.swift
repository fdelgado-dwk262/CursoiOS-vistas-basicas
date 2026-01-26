//
//  Vista16_scrollHorizontal.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 23/1/26.
//

import SwiftUI

struct Vista16_scrollHorizontal: View {
    var body: some View {

        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 20) {
                ForEach(0..<6) { indice in
                    Vistatarjeta(numero: indice)
                }
            }
            .background(.white)
            .padding(.horizontal)
            .padding(.vertical, 5)
        }
    }
}

struct Vistatarjeta: View {
    let numero: Int
    let colores: [Color] = [.red, .blue, .yellow, .green, .orange, .pink]
    
    // nota de mejora pasar las variables a la vista proincipal para poderlas usar
    // y poder controlar el foech en bas ea la cantidad del array 
    
    var body: some View {
        VStack {
            Text("Nivel \(numero + 1)")
                .font(.headline)
                .foregroundColor(.white)

            Spacer()

            Image(systemName: "star.fill")
                .foregroundStyle(.yellow)
        }
        .padding()
        .frame(width: 150, height: 200)
        .background(colores[numero])
        .cornerRadius(20)
        .shadow(radius: 4, x: 3, y: 4)
    }

}

#Preview {
    Vista16_scrollHorizontal()
}
