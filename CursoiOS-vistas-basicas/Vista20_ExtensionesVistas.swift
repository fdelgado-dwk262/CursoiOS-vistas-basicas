//
//  Vista20_ExtensionesVistas.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 26/1/26.
//

import SwiftUI

struct Vista20_ExtensionesVistas: View {

    // estado
    @State private var estaResaltado = false

    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
            .estilo1()
        Button("dasdsadas") {}
            .botonGrande()

        Button("dasdsadas") {}
            .modifier(BotonModifier(color: .red))

        Button("Otro boton") {}
            .estiloColorBoton(color: .blue)

        // con un toggle dos formas de hacer
        Text("Activeme")
            .toggleColoreame()
        Text("activame de otra forma")
            .modifier(ToggleColoreame())

        Divider()
        Text("testo con bordes resaltado")
        // 2 fromas de hacerlos hacerlos
        // contra el Struc
        // .modifier(ModificamosBordes(activado: $estaResaltado))
        // lo hacemos de otra forma llamando a la extensión y esta al struct
            
            .bordeModificado(activado: $estaResaltado)
        // -----
        Button("cambiar border") {
            estaResaltado.toggle()
            print(estaResaltado)
        }
        .estiloColorBoton(color: .green)
    }
}

// caso de uso por ejemplo el uso dentro de un fichero estilos donde
// metemos todo y es accesible desde tofdo el módulo
// extiende sobre el codigo y no solo estilos son todas propiedades
// atributos etc.. que adminte el elemento

// Extensiones
extension View {
    func estilo1() -> some View {
        self
            .padding(20)
            .font(.largeTitle)
            .foregroundColor(.blue)
            .background(.yellow)
    }
    func botonGrande() -> some View {
        self
            .padding(20)
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(20)
            .cornerRadius(50)
    }
    func botonGrandeModificado() -> some View {
        self
            .padding(20)
            .foregroundColor(.blue)
            .background(.gray)
            .cornerRadius(20)
            .cornerRadius(50)
    }
}

struct BotonModifier: ViewModifier {
    let color: Color

    // referencia a la vista a modificar
    func body(content: Content) -> some View {
        content  // usamos content en vez de seft
            .padding(40)
            .background(color)
            .foregroundStyle(.white)
            .cornerRadius(20)
    }
}

// otra extensión con otra froma de pasao de parametro  .- el boton llama a esta funcion la cual llama al struc para cambiar color
extension View {
    func estiloColorBoton(color: Color = .red) -> some View {
        self.modifier(BotonModifier(color: color))
    }
}

// dentro de un modifier puedo tener stados
// view modifier con @state

extension View {
    func toggleColoreame() -> some View {
        self.modifier(ToggleColoreame())
    }
}

struct ToggleColoreame: ViewModifier {
    @State var activado: Bool = false

    func body(content: Content) -> some View {
        Toggle(isOn: $activado) {
            content
                .foregroundColor(activado ? .red : .green)
        }
        .padding()
    }
}

// vieMpodifier con un parametro que recibimos  ( binding )
struct ModificamosBordes: ViewModifier {
    // "activado" va a ser el estado que recibimos de fuera
    @Binding var activado: Bool

    func body(content: Content) -> some View {
        content
            .padding(20)
            .foregroundColor(.blue)
            .border(activado ? .red : .green)

    }

}

extension View {
    func bordeModificado(activado: Binding<Bool>) -> some View {
        self.modifier(ModificamosBordes(activado: activado))
    }
}


#Preview {
    Vista20_ExtensionesVistas()
}
