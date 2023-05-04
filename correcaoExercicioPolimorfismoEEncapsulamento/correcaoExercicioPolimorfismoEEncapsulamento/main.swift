//
//  main.swift
//  correcaoExercicioPolimorfismoEEncapsulamento
//
//  Created by Caio Fabrini on 16/03/23.
//

import Foundation

// MARK: DESAFIO VENDEDOR

class Vendedor {
    
    var nome: String
    var idade: Int
    var cpf: String
    var saldoEmConta: Double
    
    init(nome: String, idade: Int, cpf: String, saldoEmConta: Double) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
    }

    
    func vender(quantidadeDePecas: Int, tipoDePeca: String) {
        if tipoDePeca == "Terno" {
            venderTerno(quantidadeDeTernos: quantidadeDePecas)
        } else if tipoDePeca == "Vestido" {
            venderVestido(quantidadeDeVestido: quantidadeDePecas)
        } else {
            print("Não temos esse produto na loja")
        }
    }
    
    private func venderTerno(quantidadeDeTernos: Int) {
        var desconto: Double = 0
        if quantidadeDeTernos >= 3 {
            desconto = Double(50 * quantidadeDeTernos)
        }
        saldoEmConta = saldoEmConta + Double(quantidadeDeTernos * 400) - desconto
    }
    
    private func venderVestido(quantidadeDeVestido: Int) {
        if quantidadeDeVestido == 5 {
            print("Parabens, você ganhou um veu de noiva")
        }
        saldoEmConta = saldoEmConta + Double(quantidadeDeVestido * 900)
    }
}

//var caioVendedor: Vendedor = Vendedor(nome: "Caio", idade: 21, cpf: "CPF", saldoEmConta: 10000)
//caioVendedor.vender(quantidadeDePecas: 10, tipoDePeca: "Terno")
//print(caioVendedor.saldoEmConta)


// MARK: DESAFIO FUNCIONARIO

class Funcionario {
    var nome: String
    var salario: Double
    var cpf: String
    
    init(nome: String, salario: Double, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func bonusAnual() {
       print("")
    }
    
}


class Programador: Funcionario {
    
    var plataformaDeTrabalho: String
    
    init(plataformaDeTrabalho: String, nome: String, salario: Double, cpf: String ) {
        self.plataformaDeTrabalho = plataformaDeTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func bonusAnual() {
        print("Seu bonus é de 20%, sendo assim o valor do seu bonus é de: R$\(salario * 12 * 0.2)")
    }
    
}


class Designer: Funcionario {
    
    var ferramentaPreferida: String
    
    init(ferramentaPreferida: String, nome: String, salario: Double, cpf: String ) {
        self.ferramentaPreferida = ferramentaPreferida
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func bonusAnual() {
        print("Seu bonus é de 15%, sendo assim o valor do seu bonus é de: R$\(salario * 12 * 0.15)")
    }
    
}

//var felipeProgramador: Programador = Programador(plataformaDeTrabalho: "Xcode", nome: "Felipe", salario: 22000, cpf: "CPF")
//felipeProgramador.bonusAnual()
//
//var felipeDesigner: Designer = Designer(ferramentaPreferida: "Gimp", nome: "Felipe", salario: 22000, cpf: "CPF")
//felipeDesigner.bonusAnual()


// MARK: DESAFIO VEICULO

class Veiculo {
    var quantidadeDePassageiros: Int
    
    init(quantidadeDePassageiros: Int) {
        self.quantidadeDePassageiros = quantidadeDePassageiros
    }
    
    func calcularCombustivel(km: Double) -> Double {
        return km * Double(quantidadeDePassageiros)
    }
    
}

class Carro: Veiculo {
    
    var tamanhoDasRodas: Int
    
    init(tamanhoDasRodas: Int, quantidadeDePassageiros: Int ){
        self.tamanhoDasRodas = tamanhoDasRodas
        super.init(quantidadeDePassageiros: quantidadeDePassageiros)
    }
    
    override func calcularCombustivel(km: Double) -> Double {
        return km * Double(quantidadeDePassageiros) * Double(tamanhoDasRodas)
    }
    
}

class Aviao: Veiculo {
  
}


var boing: Aviao = Aviao(quantidadeDePassageiros: 100)
boing.calcularCombustivel(km: 1200)









