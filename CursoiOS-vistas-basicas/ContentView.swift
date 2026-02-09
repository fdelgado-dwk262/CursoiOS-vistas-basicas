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
                    NavigationLink(destination: Vista19_lista_profe_01()) {
                        Text("ir a la Vista 19 .- Listas Profe")
                    }

                    NavigationLink(destination: Vista19_lista_profe_02()) {
                        Text("ir a la Vista 19 .- Listas Profe II")
                    }
                    NavigationLink(destination: Vista20_Ejercicio_vistas()) {
                        Text("ir a la Vista 20 .- Ejercicio")
                    }
                    NavigationLink(destination: Vista20_ExtensionesVistas()) {
                        Text("ir a la Vista 20 .- ExtensionesVistas")
                    }
                    NavigationLink(destination: Vista21_Animaciones()) {
                        Text("ir a la Vista 21 .- Animaciones")
                    }
                    NavigationLink(destination: Vista22_GeometyReader()) {
                        Text("ir a la Vista 22 .- Vista22_GeometyReader")
                    }
                    NavigationLink(destination: Vista23_Debugging()) {
                        Text("ir a la Vista 23 .- Vista23_Debugging")
                    }
                    NavigationLink(destination: Vista24_ejercicioColorHEXtoRGB()) {
                        Text("ir a la Vista 24 .- Vista24_ejercicioColorHEXtoRGB")
                    }
                    NavigationLink(destination: vista25_grid()) {
                        Text("ir a la Vista 25 .- Grid")
                    }
                    NavigationLink(destination: Vista26_Lazy()) {
                        Text("ir a la Vista 26 .- Vista Lazy")
                    }
                    NavigationLink(destination: Vista27_LazyHStack()) {
                        Text("ir a la Vista 27 .- Vista LazyHStack")
                    }
                    NavigationLink(destination: Vista28_LazyVStack_stickyHeader()) {
                        Text("ir a la Vista 28 .- Vista LazyVStack_stikyHeader")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

