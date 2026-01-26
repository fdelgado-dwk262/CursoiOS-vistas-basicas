//
//  Vista11_formularios.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 21/1/26.
//

import SwiftUI

struct Vista11_formularios: View {

    @State private var nombre: String = ""
    @State private var email: String = ""
    @State private var vaAAsistir: Bool = false
    @State private var numeroInvitados: Int = 0
    @State private var horaLlegada: Date = Date()
    @State private var tieneAlergias: Bool = false
    @State private var alergiasUser: String = ""
    // diccionario .- Noita esta desordeando cada vez que se usa
    @State private var reservas: [String:String] = ["nombre":"","email":"","asistir":"","invitados":"","hora":"","alergias":""]

    var body: some View {

        NavigationStack {
            Form {
                Section("Datos personales") {
                    TextField("Nombre completo", text: $nombre)
                    TextField("Correo electrónico", text: $email)
                        .keyboardType(.emailAddress)
                }
                Section("confirmación") {
                    Toggle("¿ Vas a asistir ?", isOn: $vaAAsistir)

                    if vaAAsistir {
                        Group {
                            Stepper(
                                "numero de acompañates ? \(numeroInvitados)",
                                value: $numeroInvitados,
                                in: 0...10
                            )
                            DatePicker(
                                "hora de llegada",
                                selection: $horaLlegada,
                                displayedComponents: .hourAndMinute
                            )
                            Toggle("¿ Tienes alergias ?", isOn: $tieneAlergias)
                        }
                    }

                }
                
                if vaAAsistir && tieneAlergias {
                    Section("infromación médica") {
                        TextField("describe tus alergias", text: $alergiasUser, axis: .vertical)
                    }
                    .lineLimit(5)
                }
                
                Section{
                    Button("Enviar Registro") {
                        reservas["nombre"] = nombre
                        reservas["email"] = email
                        reservas["asistir"] = vaAAsistir ? "sí" : "no"
                        reservas["invitados"] = "\(numeroInvitados)"
                        reservas["hora"] = "\(horaLlegada)"
                        reservas["alergias"] = alergiasUser
                        print(reservas)
                    }
                    .frame(maxWidth: .infinity)
                    .disabled(nombre.isEmpty || email.isEmpty)
                }

            }
            // propiedades del form
            .navigationTitle("titulo de pruebas del formulario")
        }

    }
}

#Preview {
    Vista11_formularios()
}
