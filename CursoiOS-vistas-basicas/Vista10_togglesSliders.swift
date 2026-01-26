//
//  Vista_10_togglesSliders.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 21/1/26.
//

import SwiftUI

struct Vista_10_togglesSliders: View {
    
    @State private var usarWifi = true
    @State private var numArticulos: Int = 0
    @State private var posicionSlider: Double = 0.5 // debe de ser decimas en el slider
    
    var body: some View {
        
        
        VStack {
            Toggle(isOn: $usarWifi) {
                Text("Usar Wifi?")
            }
            .padding()
            .border( .black)
            .padding()
            .frame(minWidth: 30, maxWidth: 300)
            
            Text(usarWifi ? "Usar Wifi" : "No usar Wifi")
                .frame(minWidth: 30, maxWidth: 300)
            
            Stepper(value: $numArticulos, in: 0...10,) {
                Text("numero de articulos \(numArticulos)")
            }
            .frame(minWidth: 30, maxWidth: 300)
            .padding()
            .border( .black)
            .padding()
            .onChange(of: numArticulos) { oldValue, newValue in
                
            }
            
            Stepper {
                Text("Numero de Articulos 02: \(numArticulos)")
            } onIncrement: {
                if numArticulos < 10 {
                    numArticulos += 1
                }
            } onDecrement: {
                if numArticulos > 0 {
                    numArticulos -= 1
                }
            }
            
            Slider(value: $posicionSlider, in: 1...5, step: 0.1) {
                // etiqueta de accesibilidad
                Text("el eslider esta en la posicion \(Int(posicionSlider))")
            }
            Text("el eslider esta en la posicion \(Int(posicionSlider)) o \(posicionSlider)")
            
            
        }

    }
}

#Preview {
    Vista_10_togglesSliders()
}
