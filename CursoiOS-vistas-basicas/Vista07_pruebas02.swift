//
//  Vista07_pruebas02.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 20/1/26.
//

import SwiftUI

struct Vista07_pruebas02: View {
    var body: some View {

        // alinaeción entre elementos internos no respecto a su padre
        VStack(alignment: .leading) {

            // forma 1 de alinear a la izquierda del contenedor
            HStack {
                Text("Hola mundo")
                    .background(Color.cyan)
                Spacer()
            }
            .frame(width: 300, height: 5)

            // forma 2 de alinear a la izquierda
            Text("Hola mundo")
                .background(Color.cyan)
                .multilineTextAlignment(.leading)
                // alineación de si mismo respecto a al padre
                .frame(maxWidth: .infinity, alignment: .leading)

            Text("Hola mundo que tal estais")
        }
        // alineado a la .top del contenedor VStack
        //.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .frame(height: 300, alignment: .top)
        .background(Color.blue)
        .foregroundStyle(Color.white)
        Spacer()

    }

}

#Preview {
    Vista07_pruebas02()
}
