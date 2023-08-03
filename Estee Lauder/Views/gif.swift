//
//  gif.swift
//  Estee Lauder
//
//  Created by Sofia Mora Gómez on 2/8/23.
//

import SwiftUI
import SSSwiftUIGIFView
struct gif: View {
    var body: some View {
        SwiftUIGIFPlayerView(gifName: "EL")
    }
}

struct gif_Previews: PreviewProvider {
    static var previews: some View {
        gif()
    }
}
