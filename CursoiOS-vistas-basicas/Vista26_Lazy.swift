//
//  Vista26_Lazy.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 9/2/26.
//

import SwiftUI

// Se llama así por "la carga perezosa"
// se va a ir cargando de manera progresiva
// al hacer scroll va cargando nuevos datos

struct Vista26_Lazy: View {

    // definimos una constante
    // columnas adaptables de un mínimo de columna de 100 y espaciado entre columnas
    // es decir unn gap de 10 y que entren las que quepan.
    let columnas = [
        GridItem(.adaptive(minimum: 100), spacing: 10)
    ]

    var body: some View {
        // hacemos el ejemplo con VGrid Vertical grid
        NavigationStack {

            // se necesita un scrollView por que los lazy no hacen scroll, necesitan ayuda
            ScrollView {
                LazyVGrid(columns: columnas, spacing: 10) {
                    ForEach(1...500, id: \.self) { i in
                        VStack {
                            Image(systemName: "photo")
                                .font(.largeTitle)
                            Text("Foto \(i)")
                        }
                        .frame(height: 100)
                        .frame(maxWidth: .infinity)
                        .background(.indigo.opacity(0.3))
                        .cornerRadius(10)
                        
                        // para realizar controles variados
                        // por ejemplo temas de memoria
                        // estos dos procesos
                        
                        .onAppear{
                            print("Cargando foto \(i)")
                        }
                        .onDisappear {
                            print("Ocultando foto \(i)")
                        }

                    }
                }
            }
            .navigationTitle("Galeria Lazy")
        }

    }
}

#Preview {
    Vista26_Lazy()
}
