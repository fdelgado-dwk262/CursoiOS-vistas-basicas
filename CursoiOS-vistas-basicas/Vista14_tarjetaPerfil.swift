//
//  Vista14_tarjetaPerfil.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 22/1/26.
//

import SwiftUI

struct Vista14_tarjetaPerfil: View {

    var body: some View {
        // crearemos una tarjeta perfil - user

        VStack(spacing: 20) {
            // sección de imagen de perfil
            ZStack {
                Circle()
                    .stroke(Color.blue, lineWidth: 3)
                    .frame(width: 130, height: 130)
                Image(systemName: "person.crop.circle.fill")
                    // froma A
                    // .font(.system(size: 97))
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.gray.opacity(0.5))
                    .frame(width: 120, height: 120)
            }
            .padding(.top, 20)

            // sección de infromación
            VStack(spacing: 8) {
                Text("nombre demos de persona")
                    .font(.title)
                    .fontWeight(.bold)

                Label("DEsarrlladora en Swift", systemImage: "swift")
                    .font(.headline)
                    .foregroundStyle(.orange)

                Text(
                    "Lorem ipsun dolor sit amet etc.... y demas cosas muy largas"
                )
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundStyle(Color.secondary)
                .padding(.horizontal)

            }

            // divisor .-
            Divider()
                .padding(.horizontal, 10)

            // Sección estadísticas
            HStack {
                //secciones hijas
                VStack {
                    Text("25")
                        .font(.title2)
                        .bold()

                    Text("Proyectos")
                        .font(.caption)
                        .bold()
                }
                Spacer()
                VStack {
                    Text("1.2K")
                        .font(.title2)
                        .bold()

                    Text("Seguidores")
                        .font(.caption)
                        .bold()
                }
                Spacer()
                VStack {
                    Text("4.9 ⭐️")
                        .font(.title2)
                        .bold()

                    Text("Rating")
                        .font(.caption)
                        .bold()
                }
            }
            .padding(.horizontal, 40)
            
            // CTA's botones
            HStack(spacing: 15) {
            
                Button(){
                    print("Siguiendo")
                } label: {
                    Text("Seguir")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.blue)
                        .clipShape(Capsule())
                }
                Button(){
                    print("Enviadno mensaje")
                } label: {
                    Image(systemName: "envelope.fill")
                        .font(.title)
                        .foregroundColor(.blue)
                        .padding()
                        .background(
                            Capsule()
                                .stroke(.blue, lineWidth: 1)
                        )
                }
                
            }
            .padding(.horizontal)
            .padding(.bottom, 20)
            
        }
    }
}

#Preview {
    Vista14_tarjetaPerfil()
}
