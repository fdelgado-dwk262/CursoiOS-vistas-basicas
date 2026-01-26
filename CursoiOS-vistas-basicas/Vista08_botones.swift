//
//  Vista_08_botones.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 20/1/26.
//

import SwiftUI

enum MenuSize: String, CaseIterable, Identifiable {

    case small = "pequeño"
    case medium = "mediano"
    case large = "largo"

    var id: String { self.rawValue }
}

struct Vista_08_botones: View {

    // definimos variables para ver el tema de Modelo vista viats modelo
    // Estados .- variables que interactuen con la visualizacion
    // rerenderiza partes de la vista segun si se ha modificado el contenido de la variable
    @State private var activado: Bool = false
    @State private var selectorMenu: String = ""
    @State private var selectorMenuSize: MenuSize = .medium

    var body: some View {
        VStack {
            Button("pulsa el boton") {
                print("por consola hace click")
            }
            .padding(10)
            .border(.red)

            Button {
                print("pulsado")
            } label: {
                Text("Label del boton")
                    .foregroundStyle(.red)
                    .font(.largeTitle)
                    .padding(10)
                    .border(.red)
            }

            Button {
                print("pulsado 03")
            } label: {
                Label("label -> Label", systemImage: "pointer.arrow.click")
                    .foregroundStyle(.red)
                    .font(.largeTitle)
                    .padding(10)
                    .border(.red)
            }

            Button {
                print("pulsate la imagen")
            } label: {
                Image("hongo")
                    .resizable()
                    // hacen cosas diferentes
                    .scaledToFill()
                    .scaledToFit()
                    .frame(height: 60)
                    .padding(10)
                    .border(.red)
            }
            .padding(10)
            .border(.red)

            Divider()

            // Estados .-
            Text("El swicht esta " + (activado ? "Activado" : "desactivado"))
                .padding(30)
                .background((activado ? Color.blue : Color.red))
                .foregroundStyle(.white)

            Button("Cambiar estado") {
                activado.toggle()
            }
            .padding(10)
            .border(.red)

            Button {
                self.activado.toggle()
            } label: {
                Text(activado ? "Desactivar" : "Activar")
            }
            .padding(10)
            .background((activado ? Color.blue : Color.red))
            .foregroundStyle(.white)

            // Pickers
            // Muy importante el $ en la anotación - azucar sintactico
            Picker("selecciona", selection: $selectorMenu) {
                Text("opcion01").tag("01")
                Text("opcion02").tag("02")
                Text("opcion03").tag("03")
            }
            .pickerStyle(.segmented)

            // peta aqui .-
            .onChange(of: selectorMenu) { valorAnterior, valorNuevo in
                print(
                    "esta seleccionado \(valorAnterior), ahora es \(valorNuevo)"
                )
            }
            Text("Has seleccionado: \(selectorMenu)")

            VStack {
                Text("dame el tamaño, quiero:")
                Picker("selecciona", selection: $selectorMenuSize) {
                    ForEach(MenuSize.allCases) { tamanio in
                        Text(tamanio.rawValue).tag(tamanio)
                    }
                }
                .pickerStyle(.segmented)

                .onChange(of: selectorMenuSize) { menuSizeAnterior, menuSizeNuevo in
                    // print("el tamaño es \(menuSizeAnterior), ahora es \(menuSizeNuevo)")
                    switch menuSizeNuevo {
                    case .small:
                        print("tamaño pequeño")
                    case .medium:
                        print("tamaño mediano")
                    case .large:
                        print("tamaño grande")
                    }
                }

            }
            Text("Has seleccionado el tamaño : \(selectorMenuSize.rawValue)")

        }

    }
}

#Preview {
    Vista_08_botones()
}
