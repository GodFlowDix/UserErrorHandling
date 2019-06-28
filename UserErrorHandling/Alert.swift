//
//  Alert.swift
//  UserErrorHandling
//
//  Created by Mike Dix on 6/27/19.
//  Copyright © 2019 Mike Dix. All rights reserved.
//

import Foundation
import UIKit

class Alert {
    
    class func showBasic(title: String, message: String, vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
}
