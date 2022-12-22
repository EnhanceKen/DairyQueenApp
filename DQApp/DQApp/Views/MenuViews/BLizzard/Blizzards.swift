//
//  Blizzards.swift
//  DQApp
//
//  Created by Consultant on 12/21/22.
//

import SwiftUI

struct Blizzards: View {
    @StateObject var bagManager = BagManager()
    var columns = [GridItem(.adaptive(minimum: 150), spacing: 1)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 1) {
                    ForEach(BlizzardList, id: \.id) {blizzard in
                        BlizzardCard(blizzard: blizzard)
                            .environmentObject(bagManager)
                    }
                }
            }.navigationTitle("BLIZZARD® TREATS")
                .toolbar{
                    NavigationLink {
                        BagView()
                            .environmentObject(bagManager)
                    } label: {
                        BagButton(numberOfProducts: bagManager.products.count)
                    }
                    
                }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Blizzards_Previews: PreviewProvider {
    static var previews: some View {
        Blizzards()
    }
}
