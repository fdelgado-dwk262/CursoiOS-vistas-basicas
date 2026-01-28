//
//  Vista23_Debugging.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 28/1/26.
//

import SwiftUI

struct Vista23_Debugging: View {
    // creamos variables de estado
    @State private var celsius: String = ""
    @State private var fahrenheit: String = "--"

    var body: some View {

        // para hacer debugging y nos va dando los cambios en las variables de estado
        let _ = Self._printChanges()
        
        
        // url de debug
        // https://developer.apple.com/documentation/xcode/debugging

        VStack(alignment: .leading, spacing: 10) {
            Text("Conversores de temperatura 🌡️")
                .foregroundColor(Color(red: 146/255, green: 39/255, blue: 143/255, opacity: 1.0)
)

            Text("Grados Celsius (ºC)")
                .font(.title3)
                .foregroundColor(.blue)

            TextField("Ejm .- 25", text: $celsius)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .font(.headline)
                .onChange(of: celsius) { vieja, nueva in
                    convertirTemperatura()
                }
        }

        Image(systemName: "arrow.down.circle.fill")
            .font(.largeTitle)
            .font(.system(size: 40))
            .foregroundStyle(Color.blue)

        VStack(alignment: .leading, spacing: 10) {

            Text("Grados Farhenheit (ºF)")
                .font(.title3)
                .foregroundColor(.red)

            Text(fahrenheit)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.red)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.vertical, 16)
                .background(
                    RoundedRectangle(cornerRadius: 16).fill(Color(.systemGray5))
                )

        }

    }
    private func convertirTemperatura() {

        // proteger para que no pete en nil
        guard !celsius.isEmpty else {
            print("la temperatura no puede estar vacia")
            fahrenheit = "--"
            return
        }

        // sin control del error
        // Forma 1
        //        let valorCelsius = Double(celsius)
        //        let valorFarenheit = celsiusAFarenheit(valorCelsius!)
        //        let valorFarenheit = celsiusAFarenheit(valorCelsius)
        //        fahrenheit = String(format: "%.2f", valorFarenheit) + " ºF"

        // Forma para controlar si es una caracter valido

        if let valorCelsius = Double(celsius) {
            let valorFarenheit = celsiusAFarenheit(valorCelsius)
            fahrenheit = String(format: "%.2f", valorFarenheit) + " ºF"
        } else {
            fahrenheit = "Error ❌ dato instroducido no valido"
        }

    }

    private func celsiusAFarenheit(_ celsius: Double) -> Double {
        return (celsius * 9 / 5) + 32

    }

}

#Preview {
    Vista23_Debugging()
}
