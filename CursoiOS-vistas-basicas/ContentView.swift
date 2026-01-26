//
//  ContentView.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 19/1/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    NavigationLink(destination: Vista01_paddings()) {
                        Text("Ir a Vista 01 .- Padding")
                    }
                    NavigationLink(destination: Vista02_textos()) {
                        Text("Ir a Vista 02 .- Textos")
                    }
                    NavigationLink(destination: Vista03_Labels()) {
                        Text("Ir a VIsta 03 .- Lables")
                    }
                    NavigationLink(destination: Vista04_stacks()) {
                        Text("Ir a VIsta 04 .- Stack")
                    }
                    NavigationLink(destination: Vista05_images()) {
                        Text("Ir a VIsta 05 .- Imagenes")
                    }
                    NavigationLink(destination: Vista06_pruebas()) {
                        Text("Ir a VIsta 06 .- Pruebas")
                    }
                    NavigationLink(destination: Vista07_pruebas02()) {
                        Text("Ir a VIsta 07 .- Pruebas II")
                    }
                    NavigationLink(destination: Vista_08_botones()) {
                        Text("Ir a VIsta 08 .- Botones")
                    }
                    NavigationLink(destination: Vista09_textInputs()) {
                        Text("Ir a VIsta 09 .- Inputs")
                    }
                    NavigationLink(destination: Vista_10_togglesSliders()) {
                        Text("Ir a VIsta 10 .- Toggles / steppers /slider")
                    }
                    NavigationLink(destination: Vista11_formularios()) {
                        Text("Ir a VIsta 11 .- Formularios")
                    }
                    NavigationLink(destination: VIsta12_Alertas_y_menus()) {
                        Text("Ir a VIsta 12 .- Alertas y Menús")
                    }
                    NavigationLink(destination: Vista13_TouchGestures()) {
                        Text("Ir a VIsta 13 .- Gestos")
                    }
                    NavigationLink(destination: Vista14_tarjetaPerfil()) {
                        Text("Ir a VIsta 14 .- Tarjeta Perfil")
                    }
                    NavigationLink(destination: Vista15_tarjetaFav()) {
                        Text("ir a la Vista 15 .- Tarjeta Favoritos")
                    }
                    NavigationLink(destination: Vista16_scrollHorizontal()) {
                        Text("ir a la Vista 16 .- Scroll Horizontal")
                    }
                    NavigationLink(destination: Vista17_listas  ()) {
                        Text("ir a la Vista 17 .- Listas")
                    }
                    NavigationLink(destination: Vista18_listas_2()) {
                        Text("ir a la Vista 18 .- Listas 2")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

