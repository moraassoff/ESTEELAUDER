//
//  CartView.swift
//  Estee Lauder
//
//  Created by Sofia Mora Gómez on 1/8/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        
        
        
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) {
                    product in
                    ProductRow(product: product)
                }
                
                HStack{
                    Text("Your cart total is ")
                    Spacer()
                    
                    Text("$\(cartManager.total).00")
                    .bold()
                   
                }
                PaymentButton(action: {})
                    .padding()
                //for implementing apple play you have to be enrolled in apple devs program, which i am not,. this buttom is just a demo, but in a future you could implemment it as a real one and other ways of payment!
                
            } else{
                Text("Your cart is empty")
                    .font(.custom("OptimaEL-Text", size: 22))
                    .padding()
                    .frame(width: 210 , alignment: .leading)
                    .background(.ultraThinMaterial)
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                VStack {
                    Image("cartEL")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                
            }
                .padding()
                
            
            
            
                    
            }
            
            
           
                
            
        }
        .navigationTitle(Text("My cart"))
        .padding(.top)
        
    }
    
    struct CartView_Previews: PreviewProvider {
        static var previews: some View {
            CartView()
                .environmentObject(CartManager())
        }
    }
}
