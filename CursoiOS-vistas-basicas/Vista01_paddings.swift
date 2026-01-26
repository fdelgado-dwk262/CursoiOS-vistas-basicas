//
//  Untitled.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 19/1/26.
//
import SwiftUI

struct Vista01_paddings: View {
    var body: some View {
 /*       Text("Vista 01")
        Text("En esta vista usaremos el padding")
  */
        
        VStack{
            // usa el .padding por defecto qpor todos los lados por defecto 16ppp
            Text("paddin default")
                .padding()
                .background(Color.blue)
            Text("paddin de 20")
                .padding(20)
                .background(Color.red)
            Text("pading top")
                .padding(.top, 20)
                .background(Color.yellow)
            Text("pading bottom")
                .padding(.bottom, 20)
                .background(Color.gray)
            Text("pading top/bopttom")
                .padding([.top, .bottom], 20)
                .background(Color.green)
            Text("pading top/bopttom")
                .padding([.top, .bottom], 20)
            // .pading(.vertical, 20)
                .background(Color.green)
            Text("pading leading/trailing")
            // padding izquierda leading
            // padding derecha trailing
                .padding([.leading, .trailing], 20)
                .background(Color.purple)
            Text("padding Horiziontyal (izquierda y derecha)")
                .padding(.horizontal, 20)
                .background(Color.orange)
            
            // diferentes padding por tipo
            Text("Pading diferentes en cada lado")
                .padding([.top, .leading], 20)
                .background(Color.red)
            
            // diferentes padding por valor
            // añadir las lineas por cada padding de manera independiente
            Text("Pading diferentes en cada lado")
                .padding(.bottom, 10)
                .padding(.top, 30)
                .padding(.leading, 15)
                .padding(.trailing, 8)
                // .padding(EdgeInsets(top: 30, leading: 15, bottom: 10, trailing: 8))
                .background(Color.red)
            
        }
        
    }
}

#Preview {
    Vista01_paddings()
}
