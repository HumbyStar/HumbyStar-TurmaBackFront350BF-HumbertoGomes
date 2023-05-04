//
//  ViewController.swift
//  PrimeiroProjetoTabBar350BF
//
//  Created by Caio Fabrini on 25/04/23.
//

import UIKit

class Tela01ViewController: UIViewController {
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var photoEditButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    let imagePicker: UIImagePickerController = UIImagePickerController()
    
    var list: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        configTextAndColors()
        configImagePickerController()
    }
    
    func configImagePickerController() {
        imagePicker.delegate = self
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
    
    func configTextAndColors() {
        nameLabel.text = "Nome:"
        profileImageView.image = UIImage(systemName: "person.circle.fill")
        profileImageView.tintColor = .black
        nameTextField.placeholder = "Digite seu nome"
        addButton.setTitle("Adicionar", for: .normal)
        photoEditButton.setTitle("Editar Foto", for: .normal)
    }
    
    @IBAction func tappedPhotoEditButton(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true)
    }
    
    @IBAction func tappedAddButton(_ sender: UIButton) {
        if let name = nameTextField.text, !name.isEmpty {
            list.append(Person(name: nameTextField.text ?? "", image: profileImageView.image ?? UIImage()))
            tableView.reloadData()
            nameTextField.text = ""
            profileImageView.image = UIImage(systemName: "person.circle.fill")
            tableView.scrollToRow(at: IndexPath(row: list.count - 1, section: 0), at: .bottom, animated: true)
        } else {
            let alertController = UIAlertController(title: "Ops!", message: "Informe o nome corretamente", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "OK", style: .default) { action in
                print("okkkkkk")
            }
            
            alertController.addAction(okButton)
            present(alertController, animated: true)
        }
    }
    
    
}

extension Tela01ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.setupCell(person: list[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 118
    }
    
}

extension Tela01ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            profileImageView.image = image
        }
        picker.dismiss(animated: true)
    }
    
}

