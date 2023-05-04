//
//  ViewController.swift
//  PrimeiroAppTextFieldDelegate350BF
//
//  Created by Caio Fabrini on 21/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.placeholder = "Digite seu nome:"
        emailTextField.placeholder = "Digite seu e-mail:"
        nameTextField.delegate = self
        emailTextField.delegate = self
    }
    
}

extension ViewController: UITextFieldDelegate {

    // Quando o teclado subir esse metodo será disparado
    // didBegin -> autocomplete
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        if textField == nameTextField {
            nameTextField.layer.borderColor = UIColor.orange.cgColor
            nameTextField.layer.borderWidth = 2
        } else {
            emailTextField.layer.borderColor = UIColor.purple.cgColor
            emailTextField.layer.borderWidth = 2
        }
    }
    
    // Quando o teclado abaixa/some da tela
    // Metodo utilizado para fazer validações de campo
    // didEndEdit
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
        textField.layer.borderWidth = 0
        if nameTextField.hasText == true && emailTextField.hasText == true {
            view.backgroundColor = .blue
        } else {
            view.backgroundColor = .red
        }
    }
    
    // Quando pressionamos no botão "RETURNO"
    // return
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        return true
    }

}






