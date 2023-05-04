//
//  ViewController.swift
//  TableViewCollectionView350BF
//
//  Created by Caio Fabrini on 20/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var vehicleList: [Vehicle] = [
        Vehicle(name: "Carro", vehicleList: ["car1","car2","car3","car4","car5","car6"]),
        Vehicle(name: "Motocicleta", vehicleList: ["motorcycle1","motorcycle2"]),
        Vehicle(name: "Avião", vehicleList: ["plane1","plane2","plane3"]),
        Vehicle(name: "Barco", vehicleList: ["boat1"]),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CarTableViewCell.nib(), forCellReuseIdentifier: CarTableViewCell.identifier)
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vehicleList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarTableViewCell.identifier, for: indexPath) as? CarTableViewCell
        cell?.setupCell(vehicle: vehicleList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 341
    }
    
}

