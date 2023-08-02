//
//  ContentsView.swift
//  Estee Lauder
//
//  Created by Sofia Mora Gómez on 27/7/23.
//

import SwiftUI

struct ContentsView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 75)]
    
    var body: some View {
    


        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 40) {
                    ForEach (productList, id: \.id){ product in ProductCard(product: product)
                            .environmentObject(cartManager)
                        
                    }
                }
            }
            
            .navigationTitle(Text("Shop Nutritious"))
            .font(.custom("OptimaEL-Roman", size: 20))
            
            //spell the nutriciuos as EL
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButtom(numberOfProducts: cartManager.products.count)

                }
                
                
                
            }
            
        
            
            
        }
       
        
    }
}

    struct ContentsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentsView()
    }
}
