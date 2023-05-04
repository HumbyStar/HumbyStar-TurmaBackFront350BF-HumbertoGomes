//
//  ViewController.swift
//  Navegacao
//
//  Created by Caio Fabrini on 28/03/23.
//

import UIKit

// MARK: - O PRESENT ele tem a apresentação de um MODAL
// MARK: - O Dismiss ele abaixa(volta) a tela quando a exibição é um modal

// MARK: - O navigationController?.pushViewController ele tem a apresentação de uma NAVIGATION
// MARK: - O popViewController ele volta a tela quando a exibição é uma navigation

class ViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tela Root"
    }

    @IBAction func tappedShowTela02Button(_ sender: UIButton) {
        let vc: Tela02ViewController? = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        vc?.modalPresentationStyle = .formSheet
        present(vc ?? UIViewController(), animated: true)
    }
    
    @IBAction func tappedShowTela03Button(_ sender: UIButton) {
        let vc: Tela03ViewController? = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
}

