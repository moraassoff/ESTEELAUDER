//
//  ProductCard.swift
//  Estee Lauder
//
//  Created by Sofia Mora Gómez on 27/7/23.
//

import SwiftUI

struct ProductCard: View {
    var product : Product
    
    var body: some View {
        ZStack (alignment: .topTrailing){
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width:250)
                    .scaledToFit()
                VStack(alignment: .leading) {
                    
                    Text(product.name)
                        .bold()
                    Text("$\(product.price)")
                        .font(.caption)
                    
                }
                .padding()
                .frame(width: 250 , alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
               
                
            }
            .frame(width: 200, height: 200)
        .shadow(radius: 3)
        
            Button{
                print("Added to cart!")
                
            
            } label: {
                Image(systemName: "plus")
                
                    .padding(15)
                    .foregroundColor(.pink)
                    .bold()
                    .background(.white)
                    .cornerRadius(50)
                    .padding(5)
                
                
                
                
            }
            }
        
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        //takes the first item of the array
        ProductCard(product : productList[0])
    }
}
