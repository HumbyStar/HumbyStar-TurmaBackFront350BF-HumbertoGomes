//
//  main.swift
//  struct
//
//  Created by Humberto Rodrigues on 14/03/23.
//
//MARK: - STRUCT CONSEGUE ATRIBUIR UM PROTOCOL
// Caso eu referencie uma propriedade de uma classe com outra, terei o reference type apenas na propiedade.

import Foundation

//MARK: - Exercício Funcionários

//Definir uma classe funcionario com nome, salario, cpf, depois defina as classes  PROGRAMADOR, que tem plataforma de trabalho(ex: android,web,ios) e uma classe Designer que tem ferramenta preferida (ex: Photoshop, sketch, Gimp). Ambos tem bonus anual baseado no salário, Programador recebe 20% e Designer recebe 15%. Faça um metodo que calcule o bonus anual e mostre o valor bonus de tela. Use polimorfismo para resolver este problema.

class Funcionario{ // --> CLASSE PAI
    let nome: String
    let cpf: String
    let salario: Double
    
    init(nome: String, cpf: String, salario: Double) {
        self.nome = nome
        self.cpf = cpf
        self.salario = salario
    }
    
    func plataformaDeEscolha(escolha: String) {
        
    }
    
    func bonusAnual() {
        
    }
}

class Programador: Funcionario { // --> CLASSE FILHO
    var plataforma: String = ""
    
    
    override func plataformaDeEscolha(escolha: String) {
        if (escolha == "Web") || (escolha == "web") {
            self.plataforma = escolha
        } else if (escolha == "Ios") || (escolha == "ios") {
            self.plataforma = escolha
        } else if (escolha == "Android") || (escolha == "android") {
            self.plataforma = escolha
        }
    }
    
    override func bonusAnual() {
        print("Bonus anual total de: ",round(12 * 0.20))
    }
}

class Designer: Funcionario {
    var ferramentaFavorita: String = ""
    
    override init(nome: String, cpf: String, salario: Double) {
        super.init(nome: nome, cpf: cpf, salario: salario)
    }
    
    override func plataformaDeEscolha(escolha: String) {
        if (escolha == "Photoshop") || (escolha == "photoshop") {
            self.ferramentaFavorita = escolha
        } else if (escolha == "Sketch") || (escolha == "sketch") {
            self.ferramentaFavorita = escolha
        } else if (escolha == "Gimp") || (escolha == "gimp") {
            self.ferramentaFavorita = escolha
        }
    }

    override func bonusAnual() {
        print("Bonus anual total de: ",round(12 * 0.15))
    }
}

var designer = Designer(nome: "Humberto", cpf: "156352364758", salario: 2000)






//struct Pessoa {
//    var nome: String
//    var idade: Int
//}
//
//var caio: Pessoa = Pessoa(nome: "Caio", idade: 21)
//var matheus: Pessoa = Pessoa(nome: "Matheus", idade: 30)
//
//caio = matheus
//
//print(caio, matheus)


//MARK: - Exercício struct, usar get e set

class Compra {
    let name: String
    let cpf: String
    let idade: Int
    var saldoConta: Int
    
    init(name: String, cpf: String, idade: Int, saldoConta: Int) {
        self.name = name
        self.cpf = cpf
        self.idade = idade
        self.saldoConta = saldoConta
    }
    
    public func comprar(quantidade: Int, tipoPeca: String){
        if tipoPeca == "terno" {
            comprandoTernoComDesconto(quantidade: quantidade)
        } else if tipoPeca == "vestido" {
            comprandoVestidoComDesconto(quantidade: quantidade)
        } else {
            print("Produto inexistente")
        }
    }
    
    
    private func comprandoTernoComDesconto(quantidade: Int, desconto: Int = 50) {
        let terno = 400
        let totalCompra = quantidade * terno
        if quantidade >= 3 {
            let totalDesconto = quantidade * desconto
            let totalComDesconto = totalCompra - totalDesconto
            print("Voce ganhou 50 pila de desconto por terno, total da compra: \(totalComDesconto)")
            self.saldoConta -= totalComDesconto
        } else {
            print("Voce não ganhou desconto pois não comprou a quantidade necessaria, total: \(totalCompra)")
            self.saldoConta -= totalCompra
        }
        
    }
    
    private func comprandoVestidoComDesconto(quantidade: Int, brinde: String = "Ganhou véu de noiva") {
        let vestido = 900
        let totalCompra = quantidade * vestido
        if quantidade == 5 {
            print("Parabéns, você ganhou um véu de noiva")
        } else {
            print("Você não ganhou o véu de noiva")
        }
        self.saldoConta -= totalCompra
    }
}

var comprador1 = Compra(name: "Mikael", cpf: "17268736178", idade: 31, saldoConta: 1000)
comprador1.comprar(quantidade: 10, tipoPeca: "terno")
comprador1.comprar(quantidade: 5, tipoPeca: "vestido")




//MARK: - Exercício struct

//enum PecasRoupa: Int {
//    case ternos = 400
//    case vestidos = 900
//}
//
//struct Vendedor {
//    private let nome: String
//    private let age: Int
//    private let cpf: String
//    private let pecas: PecasRoupa
//
//    public func vender(quantidade: Int, tipo: PecasRoupa) {
//        switch tipo {
//            case .ternos:
//                let terno = 400
//                if quantidade > 3 {
//                    print("Voce ganhou 50 reais de desconto totalizando \((terno*3) - 50)")
//                }
//            case .vestidos:
//                if quantidade > 5 {
//                  print("Voce ganhou um véu de noiva de brinde")
//                }
//        }
//    }
//}
