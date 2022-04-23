//
//  SearchView.swift
//  fp22-happ
//
//  Created by Bailey Van Wormer on 4/14/22.
//

import SwiftUI
import UIKit

struct SearchView: View {
    @StateObject private var vm = SearchViewModel()
    var body: some View {
        
        NavigationView {
            VStack {
                
                Text("Happening Near You")
                    .font(.title)
                    .bold()
                HStack {
                    VStack {
                        NavigationLink {
                            ConcertListView()
                        }
                         label: {RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                            .frame(width: 75, height: 50)
                            .overlay {
                                Text("🎵")
                        
                        }
                        }
                        Text("Concerts")
                    }
                    .padding()
                    
                    VStack {
                        NavigationLink {
                            EventListView()
                        } label: {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                            .frame(width: 75, height: 50)
                            .overlay {
                                Text("🎭")
                            }
                        }
                        
                        Text("Events")
                    }
                    .padding()
                    
                    VStack {
                        NavigationLink {
                            PartyListView()
                        } label: {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                            .frame(width: 75, height: 50)
                            .overlay {
                                Text("🍾")
                            }
                        }
                        
                        Text("Parties")
                    }
                    .padding()
                }
                .padding()
                
                HStack {
                    VStack {
                        NavigationLink {
                            CompanyListView()
                        } label: {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                                .frame(width: 75, height: 50)
                                .overlay {
                                    Text("👨🏼‍💻")
                                }
                        }
                        
                        Text("Company")
                    }
                    .padding()
                    
                    VStack {
                        NavigationLink {
                            ClubListView(vm:vm)
                        } label: {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                            .frame(width: 75, height: 50)
                            .overlay {
                                Text("📝")
                            }
                        }
                        
                        Text("Clubs")
                    }
                    .padding()
                    
                    VStack {
                        NavigationLink {
                            SpeakerListView()
                        } label: {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                            .frame(width: 75, height: 50)
                            .overlay {
                                Text("🎤")
                            }
                        }
                        
                        Text("Speakers")
                    }
                    .padding()
                }
                .padding()
                
                HStack {
                    VStack {
                        NavigationLink {
                            SportListView()
                        } label: {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                            .frame(width: 75, height: 50)
                            .overlay {
                                Text("🏈")
                            }
                        }
                        
                        Text("Sports")
                    }
                    .padding()
                    
                    VStack {
                        NavigationLink {
                            FoodListView()
                        } label: {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                            .frame(width: 75, height: 50)
                            .overlay {
                                Text("🍕")
                            }
                        }
                        
                        Text("Food")
                    }
                    .padding()
                    
                    VStack {
                        NavigationLink {
                            ReligiousListView()
                        } label: {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.909))
                            .frame(width: 75, height: 50)
                            .overlay {
                                Text("🙏🏻")
                            }
                        }
                        
                        Text("Religious")
                    }
                    .padding()
                }
                .padding()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
