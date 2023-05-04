//
//  Tela02ViewController.swift
//  ResolucaoDesafio
//
//  Created by Caio Fabrini on 06/04/23.
//

import UIKit

class Tela02ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    let name: String
    
    init?(coder: NSCoder, name: String) {
        self.name = name
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
    }
    
    @IBAction func tappedBackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

}
