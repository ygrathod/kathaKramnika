//
//  KathaListView.swift
//  kathaKramnikaiOS
//
//  Created by Yuvrajsinh on 19/02/23.
//

import SwiftUI

struct KathaListView: View {
    var layout = [
        GridItem(),
        GridItem()
    ]
    var katha: [String] = []
    init(katha: [String]) {
        self.katha = katha
    }
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach(katha,id: \.self) { image in
                        NavigationLink{
                            kathaDetailsView(image: image)
                        } label: {
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(2.5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 2)
                                        .stroke(.gray, lineWidth: 5))
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

struct KathaListView_Previews: PreviewProvider {
    static var previews: some View {
        KathaListView(katha: Util.chhand)
    }
}
