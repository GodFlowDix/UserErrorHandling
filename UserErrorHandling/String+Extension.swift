//
//  String+Extension.swift
//  UserErrorHandling
//
//  Created by Mike Dix on 6/27/19.
//  Copyright © 2019 Mike Dix. All rights reserved.
//

import Foundation


extension String {
    
    var isValidEmail : Bool {
        
        let emailFormat = "[A-X0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
        
    }
}
