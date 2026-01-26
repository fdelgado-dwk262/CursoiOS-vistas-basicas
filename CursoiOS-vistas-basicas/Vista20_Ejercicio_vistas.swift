// Ejercicio
/*

 📱 Enunciado del ejercicio: Contador de hábitos diarios
 Vas a crear una pequeña app en SwiftUI que permita llevar el control de un hábito diario, por ejemplo: beber agua, leer o hacer ejercicio.
 🧱 Requisitos generales
 La app debe tener al menos dos vistas:
 Una vista principal (MainView)
 Una vista secundaria (DetailView)
 Debes usar:
 struct para definir el modelo de datos
 @Binding para compartir y modificar estado entre vistas
 extension para añadir funcionalidad sin modificar el código original
 🧩 Parte 1 – Modelo de datos (struct)
 Crea un struct llamado Habit que represente un hábito diario.
 Debe contener al menos:
 Un nombre del hábito (String)
 Un contador de progreso (Int)
 Un objetivo diario (Int)
 👉 Pista: Este struct será usado por varias vistas.
 🧩 Parte 2 – Vista principal
 La vista principal debe:
 Mostrar el nombre del hábito
 Mostrar el progreso actual y el objetivo (por ejemplo: 3 / 8)
 Tener un botón para abrir la vista de detalle
 Mantener el estado del hábito (probablemente con @State)
 🧩 Parte 3 – Vista de detalle (uso de @Binding)
 La vista de detalle debe recibir el hábito como @Binding y permitir:
 Incrementar el progreso del hábito
 Decrementar el progreso (sin permitir valores negativos)
 Mostrar el progreso actualizado en tiempo real
 ⚠️ Importante:
 Los cambios realizados aquí deben reflejarse automáticamente en la vista principal.
 🧩 Parte 4 – Extension
 Crea una extension del struct Habit que agregue al menos:
 Una propiedad calculada que indique si el objetivo fue alcanzado (Bool)
 O un método que reinicie el progreso
 O un texto descriptivo basado en el progreso (por ejemplo: “Vas bien”, “Objetivo cumplido”, etc.)
 👉 No puedes modificar el struct original para esto, solo usar extension.
 🧠 Extra (opcional, nivel pro)
 Cambia el color del texto si el hábito fue completado
 Deshabilita el botón de incremento si se alcanza el objetivo
 Usa NavigationStack o sheet para la navegación

 */

import SwiftUI

/*
Creamos un struct de datos a modo de modelo de datos sin igualar
 a nada solo es la definicion de tipos de datos
 */
struct Habit {
    var name: String = ""
    var progress: Int = 0
    var goal: Int = 0

//    var isCompleted: Bool {
//        progress >= goal
//    }
//
//    var progressText: String {
//        "\(progress) / \(goal)"
//    }
//
//    mutating func reset() {
//        progress = 0
//    }

}

// vista principal
/*
La vista principal
 tenemos 3 elementos un texto
 un contador y un boton

 */
struct Vista20_Ejercicio_vistas: View {

    // se define en el state los elementos definidos
    // en el modelo de datos que hemos creadno con anterrioridad
    // en el struct con datos de base
    
    // inicializamos los datos
    @State private var habit = Habit(
        name: "Beber Agua 💧",
        progress: 0,
        goal: 8
    )

    var body: some View {
        // Montamos una navegación
        NavigationStack {
            VStack(spacing: 20) {

                // sobre los datos que hemos metido en el state
                // recuperamos el nombre name: "Beber Agua 💧",
                Text(habit.name)
                    .font(.largeTitle)
                    .bold()

                Text(habit.progressText)
                    .font(.title)
                    .foregroundColor(habit.isCompleted ? .green : .primary)

                if habit.isCompleted {
                    Text("¡Objetivo cumplido! 🎉")
                        .foregroundColor(.green)
                }

                NavigationLink("Ver detalle") {
                    DetailView(habit: $habit)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}

extension Habit {

    var isCompleted: Bool {
        progress >= goal
    }

    var progressText: String {
        "\(progress) / \(goal)"
    }

    mutating func reset() {
        progress = 0
    }
}

struct DetailView: View {

    @Binding var habit: Habit

    var body: some View {
        VStack(spacing: 20) {

            Text("Detalle del hábito")
                .font(.title2)

            Text(habit.name)
            Text(habit.progressText)
                .font(.title)

            HStack(spacing: 20) {

                Button("-") {
                    if habit.progress > 0 {
                        habit.progress -= 1
                    }
                }
                .font(.largeTitle)

                Button("+") {
                    if habit.progress < habit.goal {
                        habit.progress += 1
                    }
                }
                .font(.largeTitle)
                .disabled(habit.isCompleted)
            }

            Button("Reiniciar") {
                habit.reset()
            }
            .foregroundColor(.red)
        }
        .padding()
    }
}
// llama a la vista principal
#Preview {
    Vista20_Ejercicio_vistas()
}
