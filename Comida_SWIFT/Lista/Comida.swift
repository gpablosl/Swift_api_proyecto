//
//  Comida.swift
//  Lista
//
//  Created by Alumno ULSA on 08/05/23.
//

import Foundation

class Comida : Decodable {
    var nombre : String
    var tipo : String
    var costo : String
    var pais : String
    var saludable : String
    var rapida : String
    var imagen : String

    init(nombre: String, tipo : String, costo : String,  pais : String, saludable : String, rapida : String, imagen : String){
        self.nombre = nombre
        self.tipo = tipo
        self.costo = costo
        self.pais = pais
        self.saludable = saludable
        self.rapida = rapida
        self.imagen = imagen
    }
}
