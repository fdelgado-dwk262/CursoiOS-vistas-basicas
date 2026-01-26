//
//  VIsta12_Alertas_y_menus.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 22/1/26.
//

import SwiftUI

struct VIsta12_Alertas_y_menus: View {

    @State private var mostrarAlerta: Bool = false
    @State private var mostrarActionSheet: Bool = false
    @State private var mostrarAlertaTextFIelds: Bool = false
    @State private var nombre: String = ""
    
    @State private var colorRectangulo: Color = .gray

    var body: some View {
        VStack(spacing: 20) {
            Button("Mostrar Alerta") {
                mostrarAlerta.toggle()
            }
            .alert(isPresented: $mostrarAlerta) {
                Alert(
                    title: Text("Alerta"),
                    message: Text("Mensahje de la alerta"),
                    dismissButton: .default(Text("Texto del boton"))
                )
            }

            // -----------------_
            Button("Mostrar Action Sheet") {
                mostrarActionSheet.toggle()
            }
            .actionSheet(isPresented: $mostrarActionSheet) {
                ActionSheet(
                    title: Text("Escoje opcion"),
                    message: Text("mensaje"),
                    buttons: [
                        .default(Text("Aceptar")) { aceptar() },
                        // sale en rojo por defecto
                        .destructive(Text("rechazr")) { rechazar() },
                        // no seale
                        .cancel(Text("Cancel")) {},
                    ]
                )
            }

            // -----------------_

            Button("toca para introducir tu nombre") {
                mostrarAlertaTextFIelds.toggle()
            }
            .alert("Datos", isPresented: $mostrarAlertaTextFIelds) {
                TextField("nombre", text: $nombre)
                Button("Aceptar nombre") {
                    print("Nopmbre introducido es: \(nombre)")
                    // vacia el nombre para dejar el campo limpio
                    nombre = ""
                }
            } message: {
                // mejsae de la "modal"
                Text("Introlduce tu nombre para continuar")
            }

            // -----------------_

            // menu contextual
            Label(
                "manten presionado para sacar el menu contextual",
                systemImage: "button.horizontal.top.press"
            )
            .foregroundStyle(.blue)
            // levanta un menu contextual
            .contextMenu{
                Button(){
                    colorRectangulo = .red
                } label: {
                    Label("colores de Rojo",systemImage: "paintbrush")
                }
                Button(){
                    colorRectangulo = .green
                } label: {
                    Label("colores de verde",systemImage: "leaf")
                }
            }
            
            Rectangle()
                .fill(colorRectangulo)
                .frame(width: 300, height: 50)
            
            // -----------------_

            // menu
            Menu("Toque para mostrar el menu"){
                Button(){
                    // código
                } label: {
                    Label("Editar",systemImage: "pencil")
                }
                
                Button(){
                    // código
                } label: {
                    Label("Duplicar",systemImage: "plus.square.on.square")
                }
                Divider()
                
                Button("Eliminar",systemImage: "trash", role: .destructive) {
                    // código
                }
            }
            .menuOrder(.fixed)
            
        }
    }
    // Funciones .-
    func aceptar() {
        print("Aceptar")
    }
    func rechazar() {
        print("rechazar")
    }
}

#Preview {
    VIsta12_Alertas_y_menus()
}
