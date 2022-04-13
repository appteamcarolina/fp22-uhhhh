//
//  WelcomeView.swift
//  fp22-happ
//
//  Created by Bailey Van Wormer on 4/11/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Text("Happ")
                .font(.custom("Kollektif", size: 70))
                .padding(.vertical, 50)
            Button {
                //
            } label: {
                Text("Get Started")
                    .font(.custom("Kollektif", size: 20))
                    .padding(.vertical, 6)
                    .padding(.horizontal, 12)
                    .background(.white)
                    .foregroundColor(.primary)
                    .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(.black, lineWidth: 1)
                                    .frame(width: 200)
                            )
            }
            
            Spacer()
            
            Text("Stay Updated On Events Happening Near You")
                .font(.custom("Kollektif-Italic", size: 15))
                .fontWeight(.thin)
                .padding(.vertical, 50)
            
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
