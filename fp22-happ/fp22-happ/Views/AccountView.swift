//
//  AccountView.swift
//  fp22-happ
//
//  Created by Bailey Van Wormer on 4/14/22.
//

import SwiftUI

struct AccountView: View {
    var vm: AuthViewModel
    var body: some View {
        VStack(alignment: .center) {
            Image("alecbby")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 120, alignment: .center)
            .clipShape(Circle())
            .padding(.top)
            
            Text("Alec Alec")
                .font(.title)
            
            
            HStack {
                Text("Saved Events")
                    .font(.title)
                    .bold()
            }
            Button(action: {vm.signOut()}) {
                Text("Sign Out")
                    .bold()
                    .padding(.vertical, 6)
                    .padding(.horizontal, 12)
                    .cornerRadius(8)
                    .foregroundColor(.black)
            }
            
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(vm: AuthViewModel())
    }
}