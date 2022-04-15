//
//  SearchView.swift
//  fp22-happ
//
//  Created by Bailey Van Wormer on 4/14/22.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack {
            
            Text("Happening Near You")
                .font(.title)
                .bold()
            HStack {
                VStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                    .frame(width: 75, height: 50)
                    .overlay {
                        Text("🎵")
                    }
                    
                    Text("Concerts")
                }
                .padding()
                
                VStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                    .frame(width: 75, height: 50)
                    .overlay {
                        Text("🎭")
                    }
                    
                    Text("Events")
                }
                .padding()
                
                VStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                    .frame(width: 75, height: 50)
                    .overlay {
                        Text("🍾")
                    }
                    
                    Text("Parties")
                }
                .padding()
            }
            .padding()
            
            HStack {
                VStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                        .frame(width: 75, height: 50)
                        .overlay {
                            Text("👨🏼‍💻")
                        }
                    
                    Text("Company")
                }
                .padding()
                
                VStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                    .frame(width: 75, height: 50)
                    .overlay {
                        Text("📝")
                    }
                    
                    Text("Clubs")
                }
                .padding()
                
                VStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                    .frame(width: 75, height: 50)
                    .overlay {
                        Text("🎤")
                    }
                    
                    Text("Speakers")
                }
                .padding()
            }
            .padding()
            
            HStack {
                VStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                    .frame(width: 75, height: 50)
                    .overlay {
                        Text("🏈")
                    }
                    
                    Text("Sports")
                }
                .padding()
                
                VStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                    .frame(width: 75, height: 50)
                    .overlay {
                        Text("🍕")
                    }
                    
                    Text("Food")
                }
                .padding()
                
                VStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                    .frame(width: 75, height: 50)
                    .overlay {
                        Text("🙏🏻")
                    }
                    
                    Text("Religious")
                }
                .padding()
            }
            .padding()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
