//
//  ContentView.swift
//  kathaKramnikaiOS
//
//  Created by Yuvrajsinh on 11/02/23.
//

import SwiftUI

struct HomePage: View {
    var layout = [
        GridItem(),
        GridItem()
        ]
    var katha:[Katha] = [Katha(titleImage: "chhand", sabImage: Util.chhand),
                         Katha(titleImage: "dikri", sabImage: Util.dikri),
                         Katha(titleImage: "mabap", sabImage: Util.mabap),
                         Katha(titleImage: "mantra", sabImage: Util.mantraStuti),
                         Katha(titleImage: "sadguru", sabImage: Util.shreeSadguru),
                         Katha(titleImage: "shivji", sabImage: Util.shivajiBhajan),
                         Katha(titleImage: "mixbhajan", sabImage: Util.mixBhajan),]
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach(katha,id: \.self) { image in
                        NavigationLink {
                            KathaListView(katha: image.sabImage)
                        } label: {
                            Image(image.titleImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .overlay(RoundedRectangle(cornerRadius: 5).strokeBorder(Color.black, lineWidth: 10.0))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 2)
                                        .stroke(.gray, lineWidth: 12)
                                    
                                )
                                .padding(5)
                        }
                        
                    }
                }.padding(10)
            }
            .navigationTitle("Katha Kramanika")
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarBackground(.red, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
