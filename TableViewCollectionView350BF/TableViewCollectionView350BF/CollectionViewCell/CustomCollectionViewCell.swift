//
//  CustomCollectionViewCell.swift
//  PrimeiroProjetoCollectionView350BF
//
//  Created by Caio Fabrini on 20/04/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier: String = String(describing: CustomCollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
    }
    
    func configElements() {
        carImageView.contentMode = .scaleToFill
    }
    
    func setupCell(nameImage: String) {
        carImageView.image = UIImage(named: nameImage)
    }

}
