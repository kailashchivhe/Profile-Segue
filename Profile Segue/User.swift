//
//  User.swift
//  Profile Segue
//
//  Created by Kailash Chivhe on 20/02/23.
//

import Foundation

class User{
    var name: String = ""
    var email: String = ""
    var password: String = ""
    var department: String = ""
    
    init(name: String, email: String, password: String, department: String) {
        self.name = name
        self.email = email
        self.password = password
        self.department = department
    }
}
