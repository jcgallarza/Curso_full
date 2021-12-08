//
//  UsernameViewController.swift
//  Curso_full
//
//  Created by Juan Gallarza on 07/12/21.
//

import UIKit

class UsernameViewController: UIViewController {

    enum LoginType {
        case email
        case username
    }
    
    private let passSegue = "ShowPasswordSegue"
    
    @IBOutlet weak var usernameTextField: CustomTextField!
    
    var username:String {
        get {
            return usernameTextField.value
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        usernameTextField.placeholder = "Usuario o correo electrónico"
    }
    
    @IBAction func userDidTapContinueButton(_ sender: Any) {
        if username.contains("@") {
            validateContinue(with: .email)
        }else if username.count == 8 {
            validateContinue(with: .username)
        }else{
            usernameTextField.error = "Ingrese su correo electrónico o nombre de usuario"
        }
    }
    
    func validateContinue(with type:LoginType) {
        let validUser:Bool = type == .email ? Validator.validateEmail(username) : Validator.validateUser(username)
        
        if validUser {
            performSegue(withIdentifier: passSegue, sender: self)
        }else{
            usernameTextField.setError(with: type == .email ? "Email inválido" : "Usuario Inválido" )
        }
        view.layoutIfNeeded()
    }
    
    @IBAction func userDidTapSignupButton(_ sender: Any) {
    }
}

