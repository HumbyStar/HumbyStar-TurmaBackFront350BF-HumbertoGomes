//
//  ViewController.swift
//  TableViewAvancado350BF
//
//  Created by Caio Fabrini on 13/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var employeeList: [Employee] = [
        Employee(userImage: "person.circle", name: "Caio", age: 21, job: "Developer iOS", salary: "R$ 1.000,00", isEnableHeart: true),
        Employee(userImage: "person.circle", name: "Yan", age: 21, job: "Developer iOS", salary: "R$ 15.000,00", isEnableHeart: true),
        Employee(userImage: "person.circle", name: "Humberto", age: 21, job: "Developer iOS", salary: "R$ 15.000,00", isEnableHeart: true),
        Employee(userImage: "person.circle", name: "Douglas", age: 21, job: "Developer iOS", salary: "R$ 15.000,00", isEnableHeart: true),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PersonTableViewCell.nib(), forCellReuseIdentifier: PersonTableViewCell.identifier)
        tableView.register(EmployeeTableViewCell.nib(), forCellReuseIdentifier: EmployeeTableViewCell.identifier)
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 + employeeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier, for: indexPath) as? PersonTableViewCell
            cell?.setupCell(person: Person(nameImage: "trash", name: "Caio Fabrini"))
            return cell ?? UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: EmployeeTableViewCell.identifier, for: indexPath) as? EmployeeTableViewCell
            cell?.setupCell(employee: employeeList[indexPath.row - 1])
            return cell ?? UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 157 // está é a celula de PersonTableViewCell
        } else {
            return 177 // está é a celula de EmployeeTableViewCell
        }
    }
    
}


