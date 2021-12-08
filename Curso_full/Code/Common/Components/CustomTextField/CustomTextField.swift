//
//  CustomTextField.swift
//  Curso_full
//
//  Created by Juan Gallarza on 08/12/21.
//

import UIKit

class CustomTextField: UIView {

    let nibName = "CustomTextField"
    
    @IBOutlet private var inputTextField:UITextField!
    @IBOutlet private var inputErrorLaber:UILabel!
    @IBOutlet private var inputErrorHeightContraint:NSLayoutConstraint!
    
    var placeholder:String = "" {
        didSet {
            inputTextField.placeholder = placeholder
        }
    }
    
    var value:String {
        get {
            guard let val = inputTextField.text else { return "" }
            return val
        }
    }
    
    var error:String? {
        didSet {
            guard let error = error else {return}
            inputErrorHeightContraint.constant = 15
            inputErrorLaber.text = error
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        build()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        build()
    }
    
    func build() {
        guard let view = UIView.loadFromNib(nibName: nibName, owner: self) else { return }
        view.frame = bounds
        addSubview(view)
    }
    
    func setError(with error:String) {
        inputErrorHeightContraint.constant = 15
        inputErrorLaber.text = error
    }
    
    func dismissError() {
        inputErrorHeightContraint.constant = 0
        inputErrorLaber.text = ""
    }
}
