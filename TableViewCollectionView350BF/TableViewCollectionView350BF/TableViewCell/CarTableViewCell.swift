//
//  CarTableViewCell.swift
//  TableViewCollectionView350BF
//
//  Created by Caio Fabrini on 20/04/23.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier: String = String(describing: CarTableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    var list: [String] = []

    override func awakeFromNib() {
        super.awakeFromNib()
        configCollectionView()
    }
    
    func configCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
        self.collectionView.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    }
    
    func setupCell(vehicle: Vehicle) {
        nameLabel.text = vehicle.name
        list = vehicle.vehicleList
    }
    
}

extension CarTableViewCell: UICollectionViewDelegate {
    
    
}

extension CarTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell
        cell?.setupCell(nameImage: list[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
}

extension CarTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 300)
    }
}
