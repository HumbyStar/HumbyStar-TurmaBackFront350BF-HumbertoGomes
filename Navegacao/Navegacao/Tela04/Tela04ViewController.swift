//
//  Tela04ViewController.swift
//  Navegacao
//
//  Created by Caio Fabrini on 04/04/23.
//

import UIKit

class Tela04ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tela 4"
    }
    

    @IBAction func tappedBackButton(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
