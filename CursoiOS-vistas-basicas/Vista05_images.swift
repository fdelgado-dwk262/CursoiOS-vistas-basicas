//
//  Vista05_images.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 19/1/26.
//

import SwiftUI

struct Vista05_images: View {
    var body: some View {
        
        
        Text("Vista .- Imágenes")
        Divider()
        // incluimos Shape demos en una Stack
        VStack(alignment: .leading, spacing: 20){
            // formas (Shapes)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
            Capsule()
                .fill(Color.red)
                .frame(width: 300, height: 50) // si datos iguales es un circuilos
            Circle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)
            Ellipse()
                .fill(Color.green)
                .frame(width: 300, height: 50)
                
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.orange)
                    .frame(width: 300, height: 50)
                Text("Texto en el ZStack")
            }
            
            // incluimos una imagen en una Stack
            // inclumiso como imagen un simbolo
            Image(systemName: "map.fill")
                .font(.custom("", size: 50))
            Image("hongo")
                //
                .resizable()
                // mantener las proporciones
                .aspectRatio(contentMode: .fit)
                // tamaño .-
                .frame(width: 100)
            /* dudas al respecto de las imagenes*/
            Image("hongo")
                .resizable()
                // hacen cosas diferentes
                .scaledToFill()
                .scaledToFit()
                .frame(height: 30)
            Image("hongo")
                // varias proopiedades para pruebas
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .clipShape(Circle())
                .shadow(color: Color.black, radius: 9)
                .overlay(Circle().stroke(.red, lineWidth: 7))
                
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        // Anotacion de color para usar el ColorPicker
        // back o fore o lo que sea
        // Color(#colorLiteral(red: 0.98, green: 0.729, blue: 0.855, alpha: 1)) // #fabada
        .background(Color(#colorLiteral(red: 0.98, green: 0.729, blue: 0.855, alpha: 1))) // #fabada)
        .foregroundColor(Color(#colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)))// #fabada)
    }
}

#Preview {
    Vista05_images()
}
