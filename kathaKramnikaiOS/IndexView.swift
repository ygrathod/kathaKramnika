//
//  IndexView.swift
//  kathaKramnikaiOS
//
//  Created by Yuvrajsinh on 25/02/23.
//

import SwiftUI

struct IndexView: View {
    var kathaIndex: [String] = []
    init(katha: [String]) {
        self.kathaIndex = katha
    }
    var body: some View {
        ScrollView() {
            ForEach(kathaIndex,id: \.self) { image in
                NavigationLink{
                    kathaDetailsView(image: image)
                } label: {
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal, 20)
                        .padding(.vertical,0)
                }
                
            }
        }
    }
}

struct IndexView_Previews: PreviewProvider {
    static var previews: some View {
        IndexView(katha: Util.chhandIndex)
    }
}
