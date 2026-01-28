//
//  Vista22_Geometric.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 28/1/26.
//

import SwiftUI

struct Vista22_GeometyReader: View {
    var body: some View {
        // sirve para saber el tamaño de la vista y el contenedor
        // pero no nos sirve para saber los datos de pantalla en la que nos encontramos
        
        VStack (spacing: 10){
            Text("↓ un Geometry reader deabjo ↓")
            Spacer().frame(minHeight: 50 , maxHeight: 100)
            
            GeometryReader { geometry in
                VStack(alignment: .leading){
                    Text("Ancho: \(geometry.size.width)")
                    Text("Alto: \(geometry.size.height)")
                    // datos desde la vista global
                    Text("Global Origin \(geometry.frame(in: .global))")
                    
                    // crearemos un elemento que ocupe un porcentaje
                    // sobre su contenedor
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: geometry.size.width * 0.5,
                               height: 100)
                        .position(x: geometry.size.width/4, y : geometry.size.height/3)
                    
                    
                }
                .font(Font.custom("", size: 20)  )
            }
            .background(.gray)
            
            GeometryReader{ geometry in
//                VStack(alignment: .leading) {
//                    Text("Ancho: \(geometry.size.width)")
//                    Text("Alto: \(geometry.size.height)")
//                    Text("Global Origin \(geometry.frame(in: .global))")
//                }
//                .font(Font.custom("", size: 20)  )
                
                //
                HStack(spacing: 0) {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: geometry.size.width*0.25)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: geometry.size.width)
                }
                
                
                
                // ojo a los padding
                // .padding(10)
                
                // ignoramos el area de seguridad ingerior
                //.ignoresSafeArea(.all)
                
                
            }
            .background(.green.opacity(0.5))
            .frame(height: 150)
            
        }
    }
}

#Preview {
    Vista22_GeometyReader()
}
