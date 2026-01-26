//
//  Vista04_stacks.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 19/1/26.
//

import SwiftUI

struct Vista04_stacks: View {
    var body: some View {
        Text("Stack .- Apilar o apilado")
        Divider()
        VStack(spacing: 0) {
            // Vertical Stakc anidado
            VStack(spacing: 0) {
                Text("Primer Texto")
                    .background(Color.red)
                Text("Segundo Texto")
                    .background(Color.red)
                Text("Tercer Texto")
                    .background(Color.red)
            }
            .background(Color.gray)

            // Horizontal Stack
            HStack(spacing: 0) {
                Text("Primer Texto")
                    .background(Color.red)
                Text("Segundo Texto")
                    .background(Color.red)
                Text("Tercer Texto")
                    .background(Color.red)
                                
            }
            .background(Color.green)
            
            // Zstack apilacion en el eje Z uno enciam de otro
            // orden inverso en escritura del código
            ZStack {
                Text("Primer Texto") // capa de fondo
                    .background(Color.red)
                Text("Segundo Texto") // capa intermedia
                    .background(Color.red)
                Text("Tercer Texto") // capa encimad e todo
                    .background(Color.red)
            }
            .background(Color.yellow)
            
            // espaciado entre vistas
            VStack(spacing:20) {
                Text("Primer Texto")
                    .background(Color.blue)
                Text("Segundo Texto")
                    .background(Color.red)
                Text("Tercer Texto")
                    .background(Color.red)
            }
            .background(Color.yellow)
            
            // alineado de vistas en VStack
            VStack(alignment: .leading, spacing: 0) {
                Text("Primer Texto")
                    .background(Color.blue)
                Text("Segundo Texto")
                    .background(Color.red)
                Text("Tercer Texto")
                    .background(Color.red)
            }
            .background(Color.yellow)
            
            // alineado de vistas en HStack
            // por defecto centrado en la horizontal
            // se modifica en funcion de necesidades
            // top / botom ...
            HStack(alignment: .top) {
                Text("Primer Texto")
                    .font(.system(size: 30))
                    .background(Color.blue)
                Text("Segundo Texto")
                    .font(.system(size: 25))
                    .background(Color.red)

                Text("Tercer Texto")
                    .font(.system(size: 10))
                    .background(Color.red)
            }
            // .background(Color.green.opacity(0.5))
            .background(.green.opacity(0.5))
            
            // Spacer
            HStack {
                Text("izquierda")
                // Spacer(minLength: 100)
                Spacer()
                Spacer()
                Spacer()
                Text("derecha")
                Spacer()
                    .frame(width: 30, height: 30)
                    .background(Color.red)
                Text("centro")
                
            }
            .background(Color.green)
            
            // posicion de offset de la vista ZStack
            ZStack(){
                Text("texto01")
                    .background(Color.red.opacity(0.2))
                    .offset(x:30, y:30)
                Text("testo02")
                    .background(Color.green.opacity(0.2))
                    .offset(x:-30, y:-30)
                Text("texto03")
                    .background(Color.blue.opacity(0.2))
            }
            .padding(30)
            .background(Color.red.opacity(0.2))
        }
    }
}

#Preview {
    Vista04_stacks()
}
