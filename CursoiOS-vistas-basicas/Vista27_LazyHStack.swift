//
//  Vista27_LazyHStack.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 9/2/26.
//

import SwiftUI

struct Vista27_LazyHStack: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                Text("Recomendadas para ti")
                    .font(.title)
                    .padding(.horizontal)

                ScrollView(.horizontal, showsIndicators: false) {

                    LazyHStack(spacing: 20) {
                        ForEach(1...50, id: \.self) { index in
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 150, height: 200)
                                .foregroundColor(.blue.opacity(0.1))
                                .overlay {
                                    VStack {
                                        Image(systemName: "movieclapper")
                                            .font(.largeTitle)
                                        Text("peli \(index)")

                                    }
                                }
                                .onAppear {
                                    print("Cargando pelicula \(index)")
                                }

                                .onDisappear {
                                    print("occultando pelicula \(index)")
                                }
                        }
                    }
                    .padding(.horizontal)
                    .frame(height: 220)
                }
                
                Text("similares para ti")
                    .font(.title)
                    .padding(.horizontal)

                ScrollView(.horizontal, showsIndicators: false) {

                    LazyHStack(spacing: 20) {
                        ForEach(1...50, id: \.self) { index in
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 150, height: 150)
                                .foregroundColor(.gray.opacity(0.1))
                                .overlay {
                                    VStack {
                                        Image(systemName: "movieclapper")
                                            .font(.largeTitle)
                                        Text("peli \(index)")

                                    }
                                }
                                .onAppear {
                                    print("Cargando pelicula \(index)")
                                }

                                .onDisappear {
                                    print("occultando pelicula \(index)")
                                }
                        }
                    }
                    .padding(.horizontal)
                    .frame(height: 220)
                }
            }
        }
    }
}

#Preview {
    Vista27_LazyHStack()
}
