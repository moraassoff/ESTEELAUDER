//
//  CartButtom.swift
//  Estee Lauder
//
//  Created by Sofia Mora Gómez on 27/7/23.
//

import SwiftUI

struct CartButtom: View {
    var numberOfProducts : Int
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(.systemPink))
                    .cornerRadius(50)
                
                
                
            }
        }
    }
}

struct CartButtom_Previews: PreviewProvider {
    static var previews: some View {
        CartButtom(numberOfProducts: 1)
    }
}
