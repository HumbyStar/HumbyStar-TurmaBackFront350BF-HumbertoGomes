//
//  ViewController.swift
//  Exercise_protocol_nofitication
//
//  Created by Humberto Rodrigues on 04/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var somethingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureNotification()
    }
    
    func configureNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacbook) , name: NSNotification.Name("Hello"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateImac) , name: NSNotification.Name("Hi"), object: nil)
    }
    
    @objc func updateMacbook() {
        
    }
    
    @objc func updateImac() {
        
    }

    @IBAction func tapToViewController2(_ sender: UIButton) {
        guard let vc = UIStoryboard(name: "ViewController2", bundle: nil).instantiateViewController(withIdentifier: "ViewController2") as? ViewController2 else {return}
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

