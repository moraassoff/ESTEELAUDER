//
//  QuizView.swift
//  Estee Lauder
//
//  Created by Sofia Mora Gómez on 2/8/23.
//

import SwiftUI
import SSSwiftUIGIFView
struct QuizView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    var body: some View {
    
        VStack{
            Spacer()
            
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
            
            
            Text(textTitle)
                .font(.title)
            
            TextField("Type your name here", text: $name)
                .font(.title2)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .border(Color.gray, width: 1)
                .frame(width: 300, height: 30)
                .background(Color(red: 0.851, green: 0.68, blue: 0.739))
                .cornerRadius(10)
                
            
            Button("Start") {
                textTitle = "Welcome \(name)!"
                    
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.pink)

            Spacer()
            Spacer()
            Spacer()
            
            
            VStack{
                Text("hi")
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
