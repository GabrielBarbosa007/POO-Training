import Foundation


// MARK: - 50 exercicios de POO para fixação sobre o conteúdo.

// MARK: - Primeira Classe

class Carro {

    private var marca: String
    private var modelo: String
    private var ano: Int
    
    init(marca: String, modelo: String, ano: Int) {
        self.marca = marca
        self.modelo = modelo
        self.ano = ano
    }
    
    func imprimirDetalhesDoCarro() {
        print("carro \(marca) \(modelo) \(ano)")
    }
}

let meuCarro = Carro(marca: "Honda", modelo: "Civic", ano: 2020)
meuCarro.imprimirDetalhesDoCarro()


// MARK: - Segunda classe

class Pessoa {
    
    var nome: String
    var idade: Int
    
    init(nome: String, idade: Int){
        self.nome = nome
        self.idade = idade
    }
    
    func cumprimentar() {
        print("Olá, meu nome e \(nome) e tenho \(idade) anos")
    }
}

let pessoal = Pessoa(nome: "Gabriel Barbosa ", idade: 26)
pessoal.cumprimentar()



// MARK: - Terceira Classe

class ContaBancaria {
    
    var saldo: Double
    var numeroDaConta: String
    
    init(saldo: Double, numeroDaConta: String) {
        self.saldo = saldo
        self.numeroDaConta = numeroDaConta
    }
    
    func depositarSaldo(valor: Double) {
        saldo += valor
    }
    
    func sacarValorDaConta(valor: Double) {
        if valor <= saldo {
            saldo -= valor
        } else {
            print("O seu saldo e insuficiente.")
        }
    }
}

let conta = ContaBancaria(saldo: 100, numeroDaConta: "4332-2")

conta.depositarSaldo(valor: 400)
conta.sacarValorDaConta(valor: 200)




// MARK: - Quarta classe

class Cliente {
    
    var nome: String
    var contaBancaria: ContaBancaria
    
    init(nome: String, contaBancaria: ContaBancaria) {
        self.nome = nome
        self.contaBancaria = contaBancaria
    }
    
    func exibirSaldo() {
        print("O seu saldo e \(contaBancaria.numeroDaConta) : R$ \(contaBancaria.saldo)")
    }
}

let contaCorrente = ContaBancaria(saldo: 2.000, numeroDaConta: "4432-4")
let cliente = Cliente(nome: "Gabriel", contaBancaria: conta)

cliente.exibirSaldo()
cliente.contaBancaria


// MARK: - Quinta Classe

class Animal {
    var nome: String
    var especie: String
    
    init(nome: String, especie: String) {
        self.nome = nome
        self.especie = especie
    }
}

class Cachorro: Animal {
    
    func latir() {
        print("\(nome) esta latindo")
    }
}

class Gato: Animal {
    func miar() {
        print("\(nome) está miando")
    }
}

// MARK: - Protocolo e Herança múltipla implícita

protocol Shape {
    func area() -> Double
}

class Circle: Shape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return Double.pi * radius * radius
    }
}

class Rectangle: Shape {
    var width: Double
    var heigth: Double
    
    init(width: Double , heigth: Double) {
        self.width = width
        self.heigth = heigth
    }
    
    func area() -> Double {
        return width * heigth
    }
}


