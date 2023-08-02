//
//  ProductRow.swift
//  Estee Lauder
//
//  Created by Sofia Mora Gómez on 1/8/23.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager : CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 135)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                
                Text("$\(product.price)")
                
                
            }
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.pink)
                .onTapGesture {
                cartManager.removeFromCart(product: product)
                }
            
                
            
            
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[3])
            .environmentObject(CartManager())
    }
}
