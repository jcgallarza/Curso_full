//
//  Validator.swift
//  Curso_full
//
//  Created by Juan Gallarza on 08/12/21.
//

import Foundation

struct Validator {
    
    enum Pattern:String {
        case email = #"^\S+@\S+\.\S+$"#
        case user = #"^[a-zA-Z-]+$"#
    }
    
    static func validateEmail(_ email:String) -> Bool {
        return validateRegex(string: email, with: .email)
    }
    
    static func validateUser(_ user:String) -> Bool {
        return validateRegex(string: user, with: .user)
    }
    
    static func validateRegex( string:String, with pattern:Pattern ) -> Bool {
        let result = string.range(
            of: pattern.rawValue,
            options: .regularExpression
        )

        return (result != nil)
    }
}
