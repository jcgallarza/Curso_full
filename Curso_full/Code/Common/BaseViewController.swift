//
//  BaseViewController.swift
//  Curso_full
//
//  Created by Juan Gallarza on 08/12/21.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func userDidTapBackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
