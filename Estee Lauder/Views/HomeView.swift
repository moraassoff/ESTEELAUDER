//
//  HomeView.swift
//  Estee Lauder
//
//  Created by Sofia Mora Gómez on 2/8/23.
//

import SwiftUI
import SSSwiftUIGIFView

struct HomeView: View {
    @State private var currentIndex = 0
    let images : [String] = ["1", "2", "3", "4"]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 8) {
                Text("Feel the Love, Feel the Nourishment, Feel Nutritious")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .frame(width: 404.0, height: 150)
                
                
                
                
                //ADD SCROLLING IMAGES/ GIFS OF WOMAN WITH PRODUCTS
                
                VStack(spacing: 20){
                    Image(images[currentIndex])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 370)
                        .cornerRadius(10)
                    HStack{
                        ForEach(0..<images.count){ index in
                            Circle()
                                .fill(self.currentIndex == index ? Color.pink : Color.brown)
                                .frame(width: 10, height: 10)
                        }
                    }
                    
                }
                .onAppear {
                    print("Appear")
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { timer in
                        if self.currentIndex + 1 == self.images.count {
                            self.currentIndex = 0
                        }else{
                            self.currentIndex += 1
                        }
                    }
                    }
                }
                
            VStack (spacing: 10){
                Spacer()
                Spacer()
                Text("Nutricious Proucts")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Spacer()
                
                
                VStack(spacing: 20){
                    Image("cleanser_no-text")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350)
                    .cornerRadius(10)
                    VStack(alignment: .leading, spacing: 10) {
                        Text("2-IN-1 FOAM CLEANSER")
                            .font(.title3)
                            .foregroundColor(Color.white)
                            .bold()
                        
                        Text("$40")
                        
                        
                    }
                    

                    
                }
                
                .background(.pink)
                .cornerRadius(10)
                Spacer()
               
                
                VStack(spacing: 20){
                    Image("mask_edited")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350)
                    .cornerRadius(10)
                    VStack(alignment: .leading, spacing: 10) {
                        Text("MELTING SOFT CREME/MASK")
                            .font(.title3)
                            .foregroundColor(Color.white)
                            .bold()
                        
                        Text("$40")
                        
                        
                    }

                    
                }
                .background(.pink)
                .cornerRadius(10)
                Spacer()
                
                
                VStack(spacing: 20){
                    Image("airy_edited")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350)
                    .cornerRadius(10)
                    VStack(alignment: .leading, spacing: 10) {
                        Text("AIRY LOTION")
                            .font(.title3)
                            .foregroundColor(Color.white)
                            .bold()
                        
                        Text("$40")
                        
                        
                    }
                }
                
                .background(.pink)
                .cornerRadius(10)
               
                
                
                VStack(spacing: 20){
                    Image("radiant_lotion")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350)
                    .cornerRadius(10)
                    VStack(alignment: .leading, spacing: 10) {
                        Text("RADIANT ESSENCE LOTION")
                            .foregroundColor(Color.white)
                            .font(.title3)
                            .bold()
                        Text("$40")
                        
                            
                        
                    }
                    
                }
                .background(.pink)
                .cornerRadius(10)
                
                
                
                
            }
            
            //error bc the contents views is done already, also, i need to change tha main screen
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

