//
//  ViewController.swift
//  PrimeiroAppTableView350BF
//
//  Created by Caio Fabrini on 06/04/23.
//

import UIKit

// MARK: - PASSO A PASSO TABLEVIEW COM XIB

// Criar a TableView e fazer a sua ligação
// Configurar TableView (delegate e dataSource)
// Criar celula customizavel
// Registrar celula
// Configurar os metodos da tableView

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var personList: [Person] = [Person(name: "Caio", surname: "Test1"),
                                Person(name: "Felipe", surname: "Test2"),
                                Person(name: "Anderson", surname: "Test3"),
                                Person(name: "Andressa", surname: "Test4"),
                                Person(name: "Lucas", surname: "Test5"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        // configurar os protocolos
        tableView.delegate = self
        tableView.dataSource = self
        // registrar celula
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }


}

// DATASOURCE -> RESPONSAVEL PELA PARTE DE DADOS
extension ViewController: UITableViewDataSource {
    
    // Quantidade de itens por SEÇÃO
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    // responsavel por criar as celulas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        cell?.setupCell(person: personList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}

// DELEGATE -> RESPONSAVEL PELA INTERAÇÃO DO USUÁRIO
extension ViewController: UITableViewDelegate {
    
}

