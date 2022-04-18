//
//  Profile.swift
//  fp22-happ
//
//  Created by Turner White on 4/16/22.
//

import Foundation

struct ProfileDataStore {
    static private let defaults = UserDefaults(suiteName: "group.com.Bailey-Van-Wormer.fp22-happ")!
    //Key to represent successful authentication with firebase. Hopefully we can prevent the user from having to log in every time they open app
    static let logInKey = "isLoggedIn"
    //Save the user's authentication email in userdefaults
    static let emailKey = "email"
    //Save the user's password in userdefaults
    static let passKey = "password"
    
    static func saveLogInStatus(bool: Bool) {
        defaults.set(bool, forKey: logInKey)
    }
    
    static func fetchLogInStatus() -> Bool {
        let ret = defaults.bool(forKey: logInKey)
        return ret
    }
    
    static func saveEmail(string: String) {
        defaults.set(string, forKey: emailKey)
    }
    
    static func fetchEmail() -> String {
        guard let ret = defaults.string(forKey: emailKey) else {return ""}
        return ret
    }
    
    static func savePass(string: String)  {
        defaults.set(string, forKey: passKey)
    }
}

class Profile {
    //var firstname: String
    //var lastname: String
    var email: String = ""
    var password: String = ""
}
