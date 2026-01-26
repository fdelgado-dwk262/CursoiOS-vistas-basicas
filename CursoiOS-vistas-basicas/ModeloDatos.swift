
// importamos el observable
import Observation

// CReamos un modelo da datos con su inicializador
// una clase fuera de las vistas
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

