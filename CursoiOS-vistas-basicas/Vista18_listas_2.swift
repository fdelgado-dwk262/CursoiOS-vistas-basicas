//
//  Vista18_lsitas_2.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 23/1/26.
//

import SwiftUI

struct Vista18_listas_2: View {
    
    @State private var arrayAnimales = ["Perro", "Gato", "Tortuga", "Pajarito"]

    var body: some View {
     
        Text("Los animales disponibles \(arrayAnimales.count)")
        
        List {
            ForEach(arrayAnimales, id: \.self) {animal in
                Text(animal)
            }
        }
        // Falta lo del viernes
        // pruebas de git
    }
}

#Preview {
    Vista18_listas_2()
}
