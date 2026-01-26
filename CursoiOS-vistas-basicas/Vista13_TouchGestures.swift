//
//  Vista13_Gestos.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 22/1/26.
//

// ejemplo generado con IA Gemini  entre comentarios .-
/*
 Promt .-

 Como experto en desarrollo en aSwift y entonos apple, necesito que me generes un código de ejemplo de gestos en una vista con el siguiente código


 */
import SwiftUI

struct Vista13_TouchGestures: View {

    // Ejercicio clase  .-

    let alto = 100.0

    // cgPoint -> esto es nuevo
    @State private var puntodeToque: CGPoint = CGPoint(x: 0, y: 50)

    var toqueEspacial: some Gesture {
        SpatialTapGesture(count: 1)
            .onEnded { evento in
                puntodeToque = evento.location
            }
    }

    @State private var mensajePulsado = ""
    @State private var aux = 0

    // para hacer el Pinch hesto de dos dezo zoom
    @State private var pinchTemporal: CGFloat = 0
    @State private var pinchFinal: CGFloat = 1
    
    // para elq desplazamiento
    @State private var posicionCirculo = CGPoint(x: 50, y: 50)

    var body: some View {
        VStack(spacing: 10) {
            Text("Hazme TAP")
                .padding(30)
                .font(.headline)
                .background(.green)
                .foregroundColor(.white)
                .onTapGesture {
                    print("Has realizato un TAP")
                }
            // ---------
            Text("Hazme TAP TAP")
                .padding(30)
                .font(.headline)
                .background(.green)
                .foregroundColor(.white)
                .onTapGesture(count: 2) {
                    print("Has realizato un TAP TAP")
                }
            // ---------
            ZStack {
                Rectangle()
                    .fill(.blue.opacity(0.5))
                    .frame(width: 300, height: 48)
                    .onTapGesture {
                        print("Tap sobre el rectangulo")
                    }
                Text("TEXTO EN EL RECTANGULO")
            }
            // --------
            Rectangle()
                .fill(.purple.opacity(puntodeToque.y / alto))
                .frame(width: 150, height: alto)
                .gesture(toqueEspacial)
            // --------

            Text("Presioname durante 1 segundo")
                .padding(30)
                .font(.headline)
                .background(.green)
                .foregroundColor(.white)
                .onLongPressGesture(
                    minimumDuration: 1.0,
                    pressing: { estaPulsado in
                        if estaPulsado {
                            aux += 1
                            mensajePulsado = "Pulsaste durante 1 segundo \(aux)"
                        } else {
                            mensajePulsado = "Acabo de soltar"
                        }
                    }
                ) {
                    // se ejecuta cuando pasa el segundo ( el minimo durations )
                    mensajePulsado = "ya hizo la pulsacion larga"
                }
            Text(mensajePulsado)
                .padding(30)
                .background(.red)
                .foregroundStyle(.white)

            // --------
            Image(systemName: "star.fill")
                .font(.system(size: 100))
                .foregroundColor(.green)
                .scaleEffect(pinchFinal + pinchTemporal)
                .gesture(
                    MagnificationGesture()
                        .onChanged{ delta in
                            pinchTemporal = delta - 1
                        }
                    // el _ es para ignorar el parametro usando el _
                        .onEnded{ _ in
                            pinchFinal += pinchTemporal
                            pinchTemporal = 0
                        }
                )
            // --------
            // Drag
            Circle()
                // posicionamiento relativo
                .fill(.blue.opacity(0.5))
                .frame(width: 100, height: 100)
                .position(posicionCirculo)
                .gesture(
                    DragGesture()
                        .onChanged{ posicion in
                            posicionCirculo.x = posicion.location.x
                            posicionCirculo.y = posicion.location.y
                        }
                        .onEnded{ _ in
                            posicionCirculo = CGPoint(x:50, y:50)
                        }
                )
        }
    }
    // fin ejercicio clase

    // inicio ejercicio IA
    /* Descomenta esta zona para verlo y comenta el código de clase
    // 1. Estados para controlar las transformaciones de la vista
    @State private var color: Color = .blue
    @State private var offset: CGSize = .zero
    @State private var isCircular: Bool = false
    @State private var isDragging: Bool = false
    
    var body: some View {
        VStack(spacing: 50) {
            Text("Interactúa con el cuadro")
                .font(.headline)
    
            // Elemento interactivo
            RoundedRectangle(cornerRadius: isCircular ? 100 : 20)
                .fill(color.opacity(0.5))
                .frame(width: 150, height: 150)
                .shadow(radius: isDragging ? 20 : 5)
                // Aplicamos el desplazamiento del gesto de arrastre
                .offset(offset)
                .animation(.spring(), value: offset)
                .animation(.easeInOut, value: isCircular)
    
                // --- GESTOS ---
    
                // A. Toque simple: Cambia el color
                .onTapGesture {
                    color = (color == .blue ? .purple : .blue)
                }
    
                // B. Toque doble: Cambia la forma
                .onTapGesture(count: 2) {
                    isCircular.toggle()
                }
    
                // C. Pulsación larga: Feedback visual
                .onLongPressGesture(minimumDuration: 0.8) {
                    color = .orange
                }
    
                // D. Gesto de arrastre (Drag)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            isDragging = true
                            offset = value.translation
                        }
                        .onEnded { _ in
                            isDragging = false
                            // Opcional: Volver a la posición original
                            // offset = .zero
                        }
                )
    
            Text("Tap: Color | Doble Tap: Forma\nLong Press: Naranja | Drag: Mover")
                .font(.caption)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
        }
    }
     */
    // finr ejercicio IA
}

#Preview {
    Vista13_TouchGestures()
}
