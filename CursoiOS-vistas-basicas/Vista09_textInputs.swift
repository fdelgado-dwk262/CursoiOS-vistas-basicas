//
//  Vista09_textInputs.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 21/1/26.
//

import SwiftUI

struct Vista09_textInputs: View {

    @State private var nombre: String = ""
    @State private var mensaje: String = ""
    @State private var password: String = ""
    @State private var email: String = ""
    @State private var pin: String = ""
    @State private var textoEditado: String = ""
    @FocusState private var mostrarEditor: Bool

    var body: some View {

        VStack {
            Text("Text Inputs - introduce tu nombre")

            TextField("Tu nombre", text: $nombre)
                .onChange(of: nombre) { oldValue, newValue in
                    print(newValue)
                }
                .frame(minWidth: 30, maxWidth: 300)

            Text("el input tioene : \(nombre)")
            Divider()

            TextField("Mensaje", text: $mensaje, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .lineLimit(5)
                .frame(minWidth: 30, maxWidth: 300)
                .submitLabel(.continue)
                .autocorrectionDisabled()
            SecureField("Contraseña", text: $password)
                .frame(minWidth: 30, maxWidth: 300)
                .keyboardType(.default)
                .submitLabel(.continue)
                .onChange(of: password) { oldValue, newValue in print(newValue)
                }

            TextField("Introduce tu email", text: $email)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .submitLabel(.continue)
                .frame(minWidth: 30, maxWidth: 300)

            TextField("numerico - PIN ", text: $pin)
                .keyboardType(.numberPad)
                .frame(minWidth: 30, maxWidth: 300)

            Divider()
            Text("editor de texto")

            TextEditor(text: $textoEditado)
                .focused($mostrarEditor)
                .frame(height: 150)
                .border(.black)
            // cierra el teclado virtual al pulsarlo
            Button("Cerrar editor - o teclado") {
                mostrarEditor=false
            }
            Spacer()
                .frame(height: 50)
        }
    }
}

#Preview {
    Vista09_textInputs()
}
