//
//  ViewController.swift
//  Ligacoes
//
//  Created by Caio Fabrini on 16/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Alfred"
    }
    

    @IBAction func tappedLoginButton(_ sender: UIButton) {
        print("cliquei no botão")
    }
    

}

