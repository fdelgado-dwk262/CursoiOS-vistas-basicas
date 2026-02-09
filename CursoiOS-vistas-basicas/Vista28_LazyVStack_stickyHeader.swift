//
//  VIsta28_LazyVStack_stikyHeader.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 9/2/26.
//

import SwiftUI

struct Vista28_LazyVStack_stickyHeader: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 16, pinnedViews: [.sectionHeaders]) {

                Section(
                    header: VistaCabeceraStiky(
                        titulo: "titulo de header AAAAAa"
                    )
                ) {
                    ForEach(1...15, id: \.self) { index in
                        VistaCard(texto: "favorito \(index)", color: .green)
                            .onAppear {
                                print("Cargando favorito \(index)")
                            }

                            .onDisappear {
                                print("occultando favorito \(index)")
                            }

                    }
                }

                Section(
                    header: VistaCabeceraStiky(titulo: "titulo de header BBBBb")
                ) {
                    ForEach(1...15, id: \.self) { index in
                        VistaCard(
                            texto: "segunda vista \(index)",
                            color: .yellow
                        )
                        .onAppear {
                            print("Cargando segunda \(index)")
                        }

                        .onDisappear {
                            print("occultando segunda \(index)")
                        }

                    }
                }
            }
        }
    }
}

// -------------------------------
// Vista de la cabecera Sticky
struct VistaCabeceraStiky: View {
    let titulo: String
    var body: some View {
        Text(titulo)
            .font(.headline)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .background(.regularMaterial)
    }
}

// -------------------------------
// Vista de card
struct VistaCard: View {
    let texto: String
    let color: Color
    var body: some View {

        VStack(alignment: .leading) {
            // Imagen de la tarjeta
//            Image(systemName: "star.fill")
//                .resizable()
//                .frame(height: 150)
//                .frame(maxWidth: .infinity)
//                .background(Color.blue.opacity(0.1))

            
            HStack{
                AsyncImage(url: URL(string: "https://picsum.photos/200/300")) { image in
                    image
                        .resizable()
//                        .scaledToFit()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 150, height: 150)

                
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(texto)
                        .font(.headline)
                        .foregroundColor(.primary)

                    Text(
                        "Esta es una descripción corta para mostrar cómo se ve el texto dentro de una card en SwiftUI."
                    )
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                }
                .padding()
            }
           
        }
        .background(color)  // Fondo de la tarjeta
        .cornerRadius(12)  // Bordes redondeados
        .shadow(radius: 5)  // Sombra para dar profundidad
        .padding()  // Margen externo
    }
}

#Preview {
    Vista28_LazyVStack_stickyHeader()
}
