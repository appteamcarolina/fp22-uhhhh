//
//  SignInView.swift
//  fp22-happ
//
//  Created by Bailey Van Wormer on 4/11/22.
//

import SwiftUI

struct SignInView: View {
    
    @State var username: String
    @State var password: String
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Sign In")
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

            HStack {
                Text("Forgot Password?")
                    .padding(.horizontal)
                Button(action: {}) {
                        Text("Login")
                            .bold()
                            .padding(.vertical, 6)
                            .padding(.horizontal, 12)
                            .background(.black)
                            .cornerRadius(8)
                            .foregroundColor(.white)
                }
            }

            HStack {
                Text("Don't have an account?")
                Button(action: {}) {
                    Text("Create one")
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

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(username: "", password: "")
    }
}
