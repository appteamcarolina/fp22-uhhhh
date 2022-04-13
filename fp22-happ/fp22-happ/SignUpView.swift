//
//  SignUpView.swift
//  fp22-happ
//
//  Created by Bailey Van Wormer on 4/11/22.
//

import SwiftUI

struct SignUpView: View {
    
    @State var username: String
    @State var password: String
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Sign Up")
                .bold()
                .font(.custom("Kollektif", size: 40))
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.all)
            
            Text("Username:")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
                .padding([.horizontal, .bottom])
            
            Text("Password:")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            TextField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding([.horizontal, .bottom])

                Button(action: {}) {
                    Text("Create Account")
                        .bold()
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                        .background(.black)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                }

            HStack {
                Text("Already have an account?")
                Button(action: {}) {
                    Text("Sign In")
                        .bold()
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                        .cornerRadius(8)
                        .foregroundColor(.black)
                }
            }
            
            Spacer()
            
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(username: "", password: "")
    }
}
