//
//  PersonTableViewCell.swift
//  TableViewAvancado350BF
//
//  Created by Caio Fabrini on 13/04/23.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "PersonTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    func setupCell(person: Person) {
        personImageView.image = UIImage(systemName: person.nameImage)
        nameLabel.text = person.name
    }

}
