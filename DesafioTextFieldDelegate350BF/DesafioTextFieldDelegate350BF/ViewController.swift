//
//  ViewController.swift
//  DesafioTextFieldDelegate350BF
//
//  Created by Caio Fabrini on 23/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        configTextField()
        configButton()
    }
    
    func configButton() {
        registerButton.isEnabled = false
    }
    
    func configTextField() {
        nameTextField.delegate = self
        addressTextField.delegate = self
        passwordTextField.delegate = self
        confirmPasswordTextField.delegate = self
        
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
        nameTextField.layer.borderWidth = 2
        
        addressTextField.layer.borderColor = UIColor.lightGray.cgColor
        addressTextField.layer.borderWidth = 2
        
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextField.layer.borderWidth = 2
        
        confirmPasswordTextField.layer.borderColor = UIColor.lightGray.cgColor
        confirmPasswordTextField.layer.borderWidth = 2
        
        passwordTextField.isSecureTextEntry = true
        confirmPasswordTextField.isSecureTextEntry = true

    }
    
    func validateTextFields() {
        if nameTextField.hasText && addressTextField.hasText && passwordTextField.hasText && confirmPasswordTextField.hasText {
            if passwordTextField.text == confirmPasswordTextField.text {
                passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
                confirmPasswordTextField.layer.borderColor = UIColor.lightGray.cgColor
                registerButton.isEnabled = true
            } else {
                passwordTextField.layer.borderColor = UIColor.red.cgColor
                confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
                registerButton.isEnabled = false
            }
        } else {
            registerButton.isEnabled = false
        }
    }
    
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        print("Cadastro realizado com sucesso!!")
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //        if textField.hasText == false {
        if !textField.hasText {
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            textField.layer.borderColor = UIColor.lightGray.cgColor
        }
        validateTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == confirmPasswordTextField {
            if let text = textField.text as? NSString {
                let updateText = text.replacingCharacters(in: range, with: string)
                print("Novo texto -> \(updateText)")
            }
        }
        return true
    }
    
}

