//
//  ProfileEditView.swift
//  fp22-happ
//
//  Created by Bailey Van Wormer on 4/24/22.
//

import SwiftUI

struct ProfileEditView: View {
    
    @State var name: String = ""
    @State var instagram: String = ""
    
    var body: some View {
        VStack {
            Text("Edit your name:")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top)
                .padding(.horizontal)
                .padding(.bottom, 5.0)
                .foregroundColor(.gray)
            
            TextField("Name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding([.horizontal, .bottom])
                .disableAutocorrection(true)
                .autocapitalization(.none)
            
            Text("Link your Instagram")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top)
                .padding(.horizontal)
                .padding(.bottom, 5.0)
                .foregroundColor(.gray)
            
            TextField("Instagram", text: $instagram)
                .textFieldStyle(.roundedBorder)
                .padding([.horizontal, .bottom])
                .disableAutocorrection(true)
                .autocapitalization(.none)
            
            Spacer()
        }
        .navigationTitle("Edit Profile")
    }
}

struct ProfileEditView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditView()
    }
}
