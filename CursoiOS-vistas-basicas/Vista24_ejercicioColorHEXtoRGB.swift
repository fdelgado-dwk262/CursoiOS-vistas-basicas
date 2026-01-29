//
//  Vista23_Debugging.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 28/1/26.
//

import SwiftUI

struct Vista24_ejercicioColorHEXtoRGB: View {
    
    @State private var colorHex: String = ""
    
    @State private var colorRed: String = ""
    @State private var colorGreen: String = ""
    @State private var colorBlue: String = ""
    
  

    var body: some View {

      
        VStack(alignment: .leading, spacing: 10) {
            
            // ejemplo de color
            Text("Conversores de GHex to RGB 🎨")
                .foregroundColor(Color(red: 146/255, green: 39/255, blue: 143/255, opacity: 1.0)
)

            Text("Color HEX")
                .font(.title3)
                .foregroundColor(.blue)

            TextField("fabada", text: $colorHex)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .font(.headline)
            
                .onChange(of: colorHex) { HexOld, HexNew in
                    let cadena = colorHex
                    
                    if cadena.count == 6 {
                        print("cantidad de caracteres \(cadena.count)")
                        
                        let pares = stride(from: 0, to: cadena.count, by: 1).map { i -> String in
                            let inicio = cadena.index(cadena.startIndex, offsetBy: i)
                            let fin = cadena.index(inicio, offsetBy: 1, limitedBy: cadena.endIndex) ?? cadena.endIndex
                            return String(cadena[inicio..<fin])
                        }

                        print(pares) // Resultado: ["AB", "CD", "EF", "GH", "IJ"]
                        print(pares.count)
                        if pares.count == 6 {
                            print("tenemos el color")
                            
                            // ver como seguimnos
                            for elemento in pares {
                                print(elemento)
                            }

                            
                            
                        } else {
                            print("faltan valores o nos hemops pasado")
                        }
                    } else {
                        print("color no valido")
                    }
                }
        }

        Image(systemName: "arrow.down.circle.fill")
            .font(.largeTitle)
            .font(.system(size: 40))
            .foregroundStyle(Color.blue)

//        VStack(alignment: .leading, spacing: 10) {
//
//            Text("Grados Farhenheit (ºF)")
//                .font(.title3)
//                .foregroundColor(.red)
//
//
//        }

    }

}

#Preview {
    Vista24_ejercicioColorHEXtoRGB()
}
