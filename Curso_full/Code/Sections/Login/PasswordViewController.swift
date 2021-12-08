//
//  PasswordViewController.swift
//  Curso_full
//
//  Created by Juan Gallarza on 08/12/21.
//

import UIKit

class PasswordViewController: BaseViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    var password:String {
        get {
            guard let pass = passwordTextField.text else { return "" }
            return pass
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
