//
//  SignupViewController.swift
//  Curso_full
//
//  Created by Juan Gallarza on 08/12/21.
//

import UIKit

class SignupViewController: BaseViewController {

    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var usernameTextField: CustomTextField!
    
    var email:String {
        get {
            return emailTextField.value
        }
    }
    
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
        emailTextField.placeholder = "Correo electrónico"
        usernameTextField.placeholder = "Usuario (8 dígitos)"
    }
    
    @IBAction func userDidTapContinueButton(_ sender: Any) {
        validateContinue()
    }
    
    func validateContinue() {
        
        var validUser:Bool = true
        
        if !Validator.validateEmail(email) {
            emailTextField.setError(with: "Email inválido" )
            validUser = false
        }else{
            emailTextField.dismissError()
        }
        
        if !Validator.validateUser(username) {
            usernameTextField.setError(with: "Usuario inválido" )
            validUser = false
        }else{
            usernameTextField.dismissError()
        }
        
        if validUser {
            performSegue(withIdentifier: "TemporarySegue", sender: self)
        }
        
        view.layoutIfNeeded()
    }
    
    
}
