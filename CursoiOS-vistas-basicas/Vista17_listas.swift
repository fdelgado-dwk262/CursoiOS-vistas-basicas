//
//  Vista17_listas.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 23/1/26.
//

import SwiftUI

// crems una estructura que va a identidicar con un protocolo
struct Animal: Identifiable {
    let id = UUID()  // idenficador .- que genera un identificador unico
    let nombre: String
}

struct Vista17_listas: View {

    let arrayAnimales = ["Perro", "Gato", "Tortuga", "Pajarito"]

    var listaAnimales: [Animal] = []
    init() {
        for animal in arrayAnimales {
            listaAnimales.append(Animal(nombre: animal))
        }
    }
    var body: some View {

        VStack {
            // vamos a cerqr una lista de elementos básica

            /*
                        List{
                            // id: \.self sirve para distinguir un elemento de otro en el caso de actulizar la lista
                            // al pasar un array de String, usa el texto como identificador unico
                            // Esto nos dará si hay repetidos
                            ForEach(arrayAnimales, id: \.self) { animal in
                                Text(animal)
            
                            }
                        }
            
             */
            List {
                ForEach(listaAnimales) { animale in
                    Text(animale.nombre)
                }
            }

            List {
                ForEach(Array(listaAnimales.enumerated()), id: \.element.id) {
                    indice,
                    animal in
                    Text(animal.nombre)
                        .listRowBackground(
                            indice % 2 == 0 ? Color.teal : Color.blue
                        )
                }

            }
        }
    }
}

#Preview {
    Vista17_listas()
}
