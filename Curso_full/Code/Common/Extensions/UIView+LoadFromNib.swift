//
//  UIView+LoadFromNib.swift
//  Curso_full
//
//  Created by Juan Gallarza on 08/12/21.
//

import UIKit

extension UIView {
    static func loadFromNib(nibName:String, owner: AnyObject) -> UIView? {
        let nib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiate(withOwner: owner, options: nil).first as? UIView
    }
}
