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
            Spacer()
            
            Text("Happ")
                .font(.custom("Kollektif-Bold", size: 40))
            Button {
                //
            } label: {
                Text("Get Started")
                    .bold()
                    .padding(.vertical, 6)
                    .padding(.horizontal, 12)
                    .background(.white)
                    .cornerRadius(8)
                    .foregroundColor(.primary)
                    .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(.black, lineWidth: 1)
                            )
            }
            
            Spacer()
            
            Text("Stay Updated On Events Happening Near You")
                .font(.subheadline)
                .fontWeight(.thin)

            Spacer()
            
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
