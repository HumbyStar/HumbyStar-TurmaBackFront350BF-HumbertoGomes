//
//  EmployeeTableViewCell.swift
//  TableViewAvancado350BF
//
//  Created by Caio Fabrini on 13/04/23.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var jobLabel: UILabel!
    
    @IBOutlet weak var salaryLabel: UILabel!
    
    @IBOutlet weak var heartButton: UIButton!
    
    static let identifier: String = "EmployeeTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(employee: Employee) {
        userImageView.image = UIImage(systemName: employee.userImage)
        nameLabel.text = "Nome: \(employee.name)"
        ageLabel.text = "Idade: \(employee.age)"
        jobLabel.text = "Profissão: \(employee.job)"
        salaryLabel.text = "Salário: \(employee.salary)"
        
        if employee.isEnableHeart {
            heartButton.tintColor = .red
        } else {
            heartButton.tintColor = .blue
        }
    }
    
    
    @IBAction func tappedHeartButton(_ sender: UIButton) {
        
    }
    
}
