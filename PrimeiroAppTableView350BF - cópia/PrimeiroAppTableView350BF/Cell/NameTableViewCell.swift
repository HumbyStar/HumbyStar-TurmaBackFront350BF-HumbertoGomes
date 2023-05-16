//
//  NameTableViewCell.swift
//  PrimeiroAppTableView350BF
//
//  Created by Caio Fabrini on 06/04/23.
//

import UIKit

// MARK: - Observação: O IDENTIFIER DEVE CONTER O MESMO NOME DO FILE
// MARK: - Criar setup

class NameTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    // Ciclo de vida de uma celula, igual ao viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell(person: Person) {
        nameLabel.text = person.name
        surnameLabel.text = person.surname
    }

}
