//
//  Vista15_tarjetaFav.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 22/1/26.
//

// importamos el observable
// import Observation
import SwiftUI

// CReamos un modelo da datos con su inicializador
// una clase fuera de las vistas

/*
 @Observable
 class UsuarioViewModel {

    var imagen: String = ""
    var title: String = ""
    var ratio: Double = 0.0
    var autor: String = ""

    // Inicializador
    init(
        imagen: String = "",
        title: String = "",
        ratio: Double = 0.0,
        autor: String = ""
    ) {

        self.imagen = imagen
        self.title = title
        self.ratio = ratio
        self.autor = autor
    }
}
 */


// ---------

// Estructura -> VIsta principal

struct Vista15_tarjetaFav: View {
    

    // Inicializamos la clase fuera de las vistas
    // con los datos harcodeados
    // datos fake
    // definidos en una variable objeto
    @State private var personas: [UsuarioViewModel] = [
        UsuarioViewModel(
            imagen: "person.crop.circle.fill",
            title: "Desarrollador iOS",
            ratio: 4.5,
            autor: "Ana"
        ),
        UsuarioViewModel(
            imagen: "person.crop.circle",
            title: "Diseñadora",
            ratio: 4.8,
            autor: "Carlos"
        ),
        UsuarioViewModel(
            imagen: "person.crop.circle.fill",
            title: "PM Senior",
            ratio: 4.2,
            autor: "Laura"
        ),
        UsuarioViewModel(
            imagen: "person.crop.circle.fill",
            title: "PM Senior",
            ratio: 4.2,
            autor: "Laura"
        ),
        UsuarioViewModel(
            imagen: "person.crop.circle.fill",
            title: "PM Senior",
            ratio: 4.2,
            autor: "Laura"
        ),
        UsuarioViewModel(
            imagen: "person.crop.circle.fill",
            title: "PM Senior",
            ratio: 4.2,
            autor: "Laura"
        ),
        UsuarioViewModel(
            imagen: "person.crop.circle.fill",
            title: "PM Senior",
            ratio: 4.2,
            autor: "Laura"
        ),
        UsuarioViewModel(
            imagen: "person.crop.circle.fill",
            title: "PM Senior",
            ratio: 4.2,
            autor: "Laura"
        ),
        UsuarioViewModel(
            imagen: "person.crop.circle.fill",
            title: "PM Senior",
            ratio: 4.2,
            autor: "Laura"
        ),
        UsuarioViewModel(
            imagen: "person.crop.circle.fill",
            title: "PM Senior",
            ratio: 4.2,
            autor: "Laura"
        )
    ]

    var body: some View {
        ScrollView {
            // tarejeta de Favoritos
            VStack(spacing: 20) {
                // realizamos un ForEach para ir recuperando los datos
                // sacamos la cantidad con el indide del objeto
                // recorremos el objeto y pintamsoen base a los datos
                // de los datos Mockup
                ForEach(personas.indices, id: \.self) { index in
                    let persona = personas[index]

                    TarjetaFavoritos(
                        imagen: persona.imagen,
                        title: persona.title,
                        ratio: persona.ratio,
                        autor: persona.autor
                    )
                }
                .padding()
                .background(.white)
                .cornerRadius(10)

                // pruebas de pintado de datos

                // Sección que llama a otra vista secundaria
                /*
                 TarjetaFavoritos(imagen: "person.crop.circle.fill", title:"sf", ratio: 2.3, autor: "autor 01")
                 TarjetaFavoritos(imagen: "person.crop.circle", title: "Otro", ratio: 3.6, autor: "el otro autor")
                
                 */
                // Sección

                // Sección

                // Sección

                // Sección
            }
            .padding(15)
            .background(.cyan)
        }
    }
}

// Esturctura Vista secundaria -> Componente
struct TarjetaFavoritos: View {

    var imagen: String = "person.crop.circle.fill"
    var title: String = "titulo"
    var ratio: Double = 1.0
    var autor: String = "autor"

    @State var esFavorito = false

    var body: some View {

        HStack(alignment: .top, spacing: 15) {
            Image(systemName: imagen)
                // froma A
                // .font(.system(size: 97))
                .resizable()
                .scaledToFit()
                .foregroundStyle(.gray.opacity(0.5))
                .frame(width: 120, height: 120)

            // textos
            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .font(.headline)
                    .fontWeight(.semibold)
                HStack(spacing: 4) {
                    Image(systemName: "star.fill")
                        .font(.system(size: 20))
                        .foregroundColor(.orange)
                    // Text("\(ratio)")
                    Text(ratio, format: .number.precision(.fractionLength(2)))
                        .font(.subheadline)
                        .fontWeight(.bold)

                }
                Text(autor)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            Spacer()

            Image(systemName: esFavorito ? "heart.fill" : "heart")
                .foregroundStyle(.red.opacity(0.9))
                .font(.title)
                .onTapGesture {
                    esFavorito.toggle()
                }

        }
        .padding(15)
        .background(.white)
        .cornerRadius(15)
        .shadow(radius: 5)

    }
}

#Preview {
    Vista15_tarjetaFav()
}
