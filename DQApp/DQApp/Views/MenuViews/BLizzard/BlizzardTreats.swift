//
//  BlizzardTreats.swift
//  DQApp
//
//  Created by Consultant on 12/21/22.
//

import SwiftUI

struct BlizzardTreats: View {
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Text("hello")
                
                ZStack{
                    Image("BlueBackground")
                    
                    VStack{
                        HStack{
                            NavigationLink(destination: AddItem(),
                                           label: {
                                ReesesButton()
                            })
                            NavigationLink(destination: AddItem(),
                                           label: {
                                SnickersButton()
                            })
                        }
                        
                        HStack{
                            NavigationLink(destination: AddItem(),
                                           label: {
                                ReesesButton()
                            })
                            NavigationLink(destination: AddItem(),
                                           label: {
                                SnickersButton()
                            })
                        }
                        
                        HStack{
                            NavigationLink(destination: AddItem(),
                                           label: {
                                ReesesButton()
                            })
                            NavigationLink(destination: AddItem(),
                                           label: {
                                SnickersButton()
                            })
                        }
                        
                        HStack{
                            NavigationLink(destination: AddItem(),
                                           label: {
                                ReesesButton()
                            })
                            NavigationLink(destination: AddItem(),
                                           label: {
                                SnickersButton()
                            })
                        }
                        
                    }
                    
                }
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
    
}


//MARK: Structs for new buttons Here

struct ReesesButton: View {
    var body: some View{
        Button(action: {}) {
            VStack(alignment: .center, spacing: 5.0) {
                Image("BLZRDTreat")
                    .resizable(capInsets: .init(), resizingMode: .stretch)
                    .frame(maxWidth: 176, maxHeight: 165)
                    .padding(.leading, 10.0)
                Text("New! REESES® TAKE5® BLIZZARD® Treat ")
                    .foregroundColor(.black)
                    .padding(.all, 10.0)
                    .font(.custom(
                        "helveticaNeue-Medium",
                        fixedSize: 15))
            }
        }
        .frame(width: 188.0, height: 185.0)
        .background(Color.white)
        .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0.0, y: 10)
    }
}

struct SnickersButton: View {
    var body: some View{
        Button(action: {}) {
            VStack(alignment: .center, spacing: 5.0) {
                Image("webp")
                    .resizable(capInsets: .init(), resizingMode: .stretch)
                    .frame(maxWidth: 176, maxHeight: 165)
                
                    .padding(.leading, 10.0)
                
                Text("New! SNICKERS® Brownie BLIZZARD® Treat")
                    .foregroundColor(.black)
                    .padding(.all, 10.0)
                    .font(.custom(
                        "helveticaNeue-Medium",
                        fixedSize: 15))
            }
        }
        .frame(width: 188.0, height: 185.0)
        .background(Color.white)
        .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0.0, y: 10)
        
    }
}














struct BlizzardTreats_Previews: PreviewProvider {
    static var previews: some View {
        BlizzardTreats()
    }
}
