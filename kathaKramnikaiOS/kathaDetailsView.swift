//
//  kathaDetailsView.swift
//  kathaKramnikaiOS
//
//  Created by Yuvrajsinh on 21/02/23.
//

import SwiftUI

struct kathaDetailsView: View {
    @State var x: CGFloat = 0
    @State var count: CGFloat = 0
    @State var screen = UIScreen.main.bounds.width
    var image: String
    init(image: String) {
        self.image = image
    }
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(2.5)
    }
}

//struct kathaDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        kathaDetailsView(image: "c1")
//    }
//}
