//
//  Vista02_textos.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 19/1/26.
//

import SwiftUI

struct Vista02_textos: View {
    // se pueden definir variablñes y constantes
    var texto: String = "Hello, World!"
    var parrafo: String = "Lorem Ipsun dolor sit ammet, consectetur adipiscing elit.Lorem Ipsun dolor sit ammet, consectetur adipiscing elit.Lorem Ipsun dolor sit ammet, consectetur adipiscing elit.Lorem Ipsun dolor sit ammet, consectetur adipiscing elit.Lorem Ipsun dolor sit ammet, consectetur adipiscing elit."
    var palabra: String = "hola"
    
    var body: some View {
        
        VStack(spacing: 8) {
            Text("Texto de una variable \(texto)")
                .font(Font.largeTitle)
            
            Text(palabra)
                .font(Font.title)
                .bold()
                .italic()
                .underline(color: .blue)
                .strikethrough(color: .red)
            Text(palabra)
                .padding(30)
                .font(Font.title2)
                .border(Color.red, width: 5)
                

            Text(palabra)
                .font(Font.title3)
            Text(palabra)
                .font(Font.largeTitle)

            Text(palabra)
                .font(Font.caption)
            Text(palabra)
                .font(Font.caption2)
            Text(palabra)
                .font(Font.footnote)
                .font(.system(size: 40))
                .fontWeight(.bold)
            Text(palabra)
                .background(Color.red)
                .foregroundColor(.white)
                .fontWeight(.heavy)
                .font(.custom("Avenir", size: 40))
            Text(palabra)
                .font(Font.largeTitle)
                .foregroundStyle(Color(hue: 0.8, saturation: 0.5, brightness: 0.9, opacity: 1))
            Text(parrafo)
                .lineLimit(3)
                // alineacion al centro
                .multilineTextAlignment(.center)
        }
        .foregroundStyle(.black)
        .background(Color(red: 0.5, green: 0.5, blue: 0.5))
        
    }
    
}

#Preview {
    Vista02_textos()
}
