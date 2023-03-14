//
//  main.swift
//  Heranca
//
//  Created by Caio Fabrini on 09/03/23.
//

import Foundation


// MARK: - Herança

// Classe Pai / Super Class

// CLASSE MAIS GENERICA OU CLASSE QUE CONTENHA ALGO QUE POSSA SER REAPROVEITADO NAS CLASSES FILHAS/ SUB CLASS

class Animal {
    
    var idade: Int = 10
    
    func comer() {
        print("O animal está comendo!")
    }
    
}

class Cavalo: Animal {

}

class Boi: Animal {
    
}

class Ovelha: Animal {
    
}

// Classe filha -> Sub class
// A classe filha contem TUDO oque a classe pai CONTEM, TANTO CARACTERISTICAS COMO AÇÕES

//var meuCavalo: Cavalo = Cavalo()
//meuCavalo.comer()

// Classe pai
class Pessoa {
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
}


class Caio: Pessoa {

    var peso: Double
    
    init(peso: Double, nome: String) {
        self.peso = peso
        super.init(nome: nome)
    }
    
    
}

var meuNomeBarbara: Caio = Caio(peso: 82, nome: "Caio")

print(meuNomeBarbara.nome)
print(meuNomeBarbara.peso)

// DESAFIO PARA PASSAR PARA CASA

// Criar uma classe pai na qual tenha 3 caracteristicas e 2 ações.
// Criar 2 classes filhas distintas, porem ambas vão herdar da classe pai(super). Cada classe filha terá 3 caracteristicas especificas.
// A classe pai terá construtor para setar seus valores.
// Uma das classes filhas não deve conter construtor.
// Uma das classes filhas deve conter contrutor indicando os valores de todas as suas propriedades.


class Tecnologia {
    
    var wifi: Bool
    var tela: Bool
    var teclado: String
    
    init(wifi: Bool, tela: Bool, teclado: String) {
        self.wifi = wifi
        self.tela = tela
        self.teclado = teclado
    }
    
    func conectarPessoa() {
        print("A teclogia está conectado com as pessoas")
    }
    
    func ajudarPessoas() {
        print("A tecnologia ajuda pessoas")
    }
    
}

class Celular: Tecnologia {
    var marca: String
    var modelo: String
    var ano: Int
    
    init(marca: String, modelo: String, ano: Int, wifi: Bool, tela: Bool, teclado: String) {
        self.marca = marca
        self.modelo = modelo
        self.ano = ano
        super.init(wifi: wifi, tela: tela, teclado: teclado)
    }
    
}

class Mac: Tecnologia {
    var marca: String = "Apple"
    var modelo: String = "MacBook Pro"
    var ano: Int = 2020
}


var meuCelular: Celular = Celular(marca: "Apple", modelo: "Iphone 14", ano: 2023, wifi: true, tela: true, teclado: "PT-BR")


//    "" -> String vazia
//    nil -> SIGNIFICA NENHUM VALOR
