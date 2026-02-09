//
//  vista25_grid.swift
//  CursoiOS-vistas-basicas
//
//  Created by Equipo 9 on 9/2/26.
//

import SwiftUI

struct vista25_grid: View {
    var body: some View {
        VStack {
            Text("Tablero de productos")
                .font(.title2)
                .padding()

            // GRID no confundir con le usuao de GRid en html
            // es mñás similar al uso de las tablas

            Grid(
                alignment: .leading,
                horizontalSpacing: 20,
                verticalSpacing: 10
            ) {
                // encabezado
                GridRow {
                    Text("producto").bold()
                    Text("precio").bold()
                    Text("srtock").bold()
                }
                Divider()
                
                // contenidos de la grid
                GridRow {
                    Text("pro 01").padding(5).background(.blue.opacity(0.3))
                    Text("30€").padding(5).background(.blue.opacity(0.3))
                    Text("15").padding(5).background(.blue.opacity(0.3))
                }
                
                GridRow {
                    Text("pro 02").padding(5).background(.blue.opacity(0.3))
                    Text("40€").padding(5).background(.blue.opacity(0.3))
                    Text("30").padding(5).background(.blue.opacity(0.3))
                }
                
                GridRow {
                    Text("pro 03")
                        .gridCellColumns(2)
                        .frame(maxWidth: .infinity)
                        .background(.red.opacity(0.3))
                    Text("30").padding(5).background(.blue.opacity(0.3))
                }

            }
            .padding()
            .border(Color.black)

        }
        .background(.gray)
        .foregroundStyle(Color.white)
    }
}

#Preview {
    vista25_grid()
}
