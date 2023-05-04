//
//  Tela03ViewController.swift
//  Navegacao
//
//  Created by Caio Fabrini on 28/03/23.
//

import UIKit


// MARK: - O popViewController ele volta a tela quando a exibição é uma navigation

class Tela03ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tela 3"
    }
    

    @IBAction func tappedBackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

     @IBAction func tappedShow04Button(_ sender: UIButton) {
         let vc: Tela04ViewController? = UIStoryboard(name: "Tela04ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela04ViewController") as? Tela04ViewController
         navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
         
     }

}
