//
//  ViewController2.swift
//  Exercise_protocol_nofitication
//
//  Created by Humberto Rodrigues on 04/05/23.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapToBack1(_ sender: UIButton) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "Hello"), object: UIColor.red)
        navigationController?.popViewController(animated: true)
        //dismiss se fosse navigation.present, nesse caso iremos usar popViewController pois estou usando uma navigation.
    }
    
    @IBAction func tapToBack2(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "Hi"), object: nil)
        navigationController?.popViewController(animated: true)
    }
    
    
}
