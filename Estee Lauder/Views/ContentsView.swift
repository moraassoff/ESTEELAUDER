//
//  ContentsView.swift
//  Estee Lauder
//
//  Created by Sofia Mora Gómez on 27/7/23.
//

import SwiftUI

struct ContentsView: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 75)]
    
    var body: some View {

        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 40) {
                    ForEach (productList, id: \.id){ product in ProductCard(product: product)
                        
                    }
                }
            }
            
            .navigationTitle(Text("Shop Nutricious"))
                .font(.custom("OptimaEL-Roman" , size: 20))
            
        
            
            
        }
       
        
    }
}

    struct ContentsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentsView()
    }
}
