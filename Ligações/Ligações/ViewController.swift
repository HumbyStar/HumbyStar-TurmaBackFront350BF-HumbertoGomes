//
//  ViewController.swift
//  Ligações
//
//  Created by Humberto Rodrigues on 16/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var btLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lbName.text = "Alfred"
        
    }


    @IBAction func tappedLoginButton(_ sender: UIButton) {
    }
}

