//
//  AccountViewModel.swift
//  fp22-happ
//
//  Created by Turner White on 4/24/22.
//

import Foundation

final class AccountViewModel: ObservableObject {
    @Published private(set) var name: String = ""
    @Published private(set) var instaHandle: String = ""
    
    init() {
        name = ProfileDataStore.fetchName()
        instaHandle = ProfileDataStore.fetchInsta()
    }
    
    func changeName(newName: String) {
        ProfileDataStore.saveName(string: newName)
    }
    
    func changeInsta(newInsta: String) {
        ProfileDataStore.saveInsta(string: newInsta)
    }
}
