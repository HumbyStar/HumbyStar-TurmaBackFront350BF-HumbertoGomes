//
//  Tela02ViewController.swift
//  Navegacao
//
//  Created by Caio Fabrini on 28/03/23.
//

import UIKit

// MARK: - O Dismiss ele abaixa(volta) a tela quando a exibição é um modal

class Tela02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tappedBackButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
}

