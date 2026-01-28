//
//  Vista21_Animaciones.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 28/1/26.
//

import SwiftUI

struct Vista21_Animaciones: View {
    @State private var mueveme:Bool = false
    @State private var ampliame:Bool = false
    @State private var animame:Bool = false
    
    var body: some View {
 
        VStack(spacing:15){
            Image(systemName: "house.fill")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .offset(mueveme ? CGSize(width: 100, height: 0): CGSize(width: -100, height: 0))
                .animation(.bouncy(duration: 0.6, extraBounce: 0.2), value: mueveme)
            // nota URL de pruebas de animaciones .-
            // https://www.svgator.com/blog/easing-functions/
            
            Button("ANimala casa") {
                mueveme.toggle()
            }
         
            Image(systemName: "tortoise.fill")
                .font(.system(size: 60))
                .foregroundColor(.red)
                .foregroundStyle(.green)
                .scaleEffect(ampliame ? 1.75 : 1)
                .animation(.easeInOut(duration: 1), value: ampliame)
            
                .animation(.default, value: ampliame)
                .onTapGesture {
                    ampliame.toggle()
                }
            
            HStack {
                RoundedRectangle(cornerRadius: animame ? 100: 50)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(animame ? .red : .yellow)
                    .scaleEffect(animame ? 2.5 : 1)
                    .rotationEffect(animame ? .degrees(360): .zero)
                    .animation(.easeInOut(duration: 1).delay(1), value: animame)
                    .onTapGesture {
                        animame.toggle()
                    }
            }
            
            .frame(width: 300, height: 100)
            .background(.green)
            
        }
    }
}

#Preview {
    Vista21_Animaciones()
}
