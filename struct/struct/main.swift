//
//  main.swift
//  struct
//
//  Created by Humberto Rodrigues on 14/03/23.
//
//MARK: - STRUCT CONSEGUE ATRIBUIR UM PROTOCOL
// Caso eu referencie uma propriedade de uma classe com outra, terei o reference type apenas na propiedade.

import Foundation

struct Pessoa {
    var nome: String
    var idade: Int
}

var caio: Pessoa = Pessoa(nome: "Caio", idade: 21)
var matheus: Pessoa = Pessoa(nome: "Matheus", idade: 30)

caio = matheus

print(caio, matheus)
