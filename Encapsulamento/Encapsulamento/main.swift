//
//  main.swift
//  Encapsulamento
//
//  Created by Humberto Rodrigues on 14/03/23.
//

import Foundation

class Carro {
    private var modelo: String
    
    init(modelo: String) {
        self.modelo = modelo
    }
    
    public func getModelo() -> String {
        return modelo
    }
    
    public func setModelo(modelo: String) {
        self.modelo = modelo
    }
}

var meuCarro: Carro = Carro(modelo: "BMW 320i")

print(meuCarro.getModelo())
meuCarro.setModelo(modelo: "La Ferrari")
print(meuCarro.getModelo())

