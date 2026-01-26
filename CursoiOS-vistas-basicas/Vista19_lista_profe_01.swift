//
//  Vista19_lista_profe_01.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 26/1/26.
//

import SwiftUI

struct Vista19_lista_profe_01: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Vista19_lista_profe_01()
}

/*
 
 Codigo del profesor
 
 //
 //  VistaListas.swift
 //  CursoiOS vistas basicas
 //
 //  Created by Equipo 2 on 23/1/26.
 //

 import SwiftUI

 struct Animal: Identifiable {
     let id = UUID()
     let nombre: String
 }

 struct VistaListas: View {
     
     let arrayAnimales = [
         "Gato", "Pájaro", "Pez", "Perro", "Araña", "Hámster", "Pato",
     ]
     
     var listaAnimales: [Animal] = []
     
     init() {
         for animal in arrayAnimales {
             listaAnimales.append(Animal(nombre: animal))
         }
     }
     
     var body: some View {
 //        List {
 //            Text("Hola")
 //            Text("Adios")
 //        }
         
 //        List {
 //            // id:\.self sirve para que swift pueda distinguir un elemento de otro en caso de actualizar la lista.
 //            // Al pasar un array de String, usa el texto como identificador único
 //            // Esto nos dará problemas si hay nombres repetidos
 //            ForEach(arrayAnimales, id:\.self) { animal in
 //                Text(animal)
 //            }
 //        }
         
         List {
             ForEach(listaAnimales) { animal in
                 HStack {
                     Spacer()
                     Text(animal.nombre)
                     Spacer()
                 }
             }
         }
         
         // Colorear cada elemento de un color, en este caso los pares de gris
         List {
             ForEach(Array(listaAnimales.enumerated()), id: \.element.id) {
                 indice, animal in
                 Text(animal.nombre)
                 .listRowBackground(
                         indice % 2 == 0 ? Color.gray.opacity(0.1) : Color.white
                 )
             }
         }
     }
 }

 #Preview {
     VistaListas()
 }
 
 
 */
