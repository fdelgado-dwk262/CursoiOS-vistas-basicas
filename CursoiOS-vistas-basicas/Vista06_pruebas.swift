//
//  Vista06_pruebas.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 20/1/26.
//

import SwiftUI

struct Vista06_pruebas: View {
    
    @State private var selectedTab: Int = 0
    
    var body: some View {
        
        
        
        TabView(selection: $selectedTab) {
                    // Pestaña 1: Inicio

                    
                    ContentView()
                        .tabItem {
                            Label("Inicio", systemImage: "house.fill")
                        }
                        .tag(0)
                    
                    // Pestaña 2: Buscar
                    Text("Pantalla de Búsqueda")
                        .tabItem {
                            Label("Buscar", systemImage: "magnifyingglass")
                        }
                        .tag(1)
                    
                    // Pestaña 3: Perfil
                    Text("Pantalla de Perfil")
                        .tabItem {
                            Label("Perfil", systemImage: "person.circle.fill")
                        }
                        .tag(2)
            // Pestaña 4: Configuracion
            Text("Pantalla de Configuracion")
                .tabItem {
                    Label("Configuracion", systemImage: "gearshape.fill")
                }
                .tag(2)
                }
        
                // 3. Personalización opcional (Color de acento)
                .accentColor(.blue)
    }
}

#Preview {
    Vista06_pruebas()
}
