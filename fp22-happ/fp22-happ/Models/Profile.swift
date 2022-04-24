//
//  Profile.swift
//  fp22-happ
//
//  Created by Turner White on 4/16/22.
//

import Foundation

struct ProfileDataStore {
    static private let defaults = UserDefaults(suiteName: "group.com.Bailey-Van-Wormer.fp22-happ")!
    //Save the user's authentication email in userdefaults
    static let nameKey = "name"
    //Save the user's password in userdefaults
    static let instaHandleKey = "insta"
    
    static func saveName(string: String) {
        defaults.set(string, forKey: nameKey)
    }
    
    static func fetchName() -> String {
        guard let ret = defaults.string(forKey: nameKey) else {return ""}
        return ret
    }
    
    static func saveInsta(string: String)  {
        defaults.set(string, forKey: instaHandleKey)
    }
    static func fetchInsta() -> String {
        guard let ret = defaults.string(forKey: instaHandleKey) else {return ""}
        return ret
    }
}

class Profile {
    //var firstname: String
    //var lastname: String
    var name: String = ""
    var instaHandle: String = ""
}
