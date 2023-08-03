//
//  QuizView.swift
//  Estee Lauder
//
//  Created by Sofia Mora Gómez on 2/8/23.
//

import SwiftUI
import SSSwiftUIGIFView
struct QuizView: View {
    var body: some View {
    
        VStack{
            
            HStack{
                Text("Do you know what is your skintype?")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 100)
                    .background(.pink)
                    .cornerRadius(20)
            }
            
            HStack{
                SwiftUIGIFPlayerView(gifName: "EL")
            }
            
            
            Text("What is your name?")
                .font(.title)
            
            TextField("Type your name here", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .font(.title2)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .border(Color.gray, width: 1)
                .frame(width: 300, height: 30)
                .background(.pink)
                .cornerRadius(10)
                
            
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }

            
            //interactive UIs cURRICULUM,
        }
        
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
