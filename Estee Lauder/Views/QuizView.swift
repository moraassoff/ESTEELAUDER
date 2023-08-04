//
//  QuizView.swift
//  Estee Lauder
//
//  Created by Sofia Mora Gómez on 2/8/23.
//

import SwiftUI
import SSSwiftUIGIFView
struct FlipEffect: GeometryEffect {
    
    var animatableData: Double {
        get {angle}
        set {angle = newValue }
    }
    @Binding var flipped: Bool
    var angle: Double
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        
        DispatchQueue.main.async {
            
            
            flipped = angle >= 90 && angle < 270
        }
        print(angle)
        
        
        
        var transform3d = CATransform3DIdentity
        
         return ProjectionTransform(transform3d)
       
    }
}
struct QuizView: View {
    @State var flipped: Bool = false
    @State var flip: Bool = false
    var body: some View {
        ScrollView{
            VStack{
                
                Text("Nourish Your Skin, Embrace Your Glow With Nutritious")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                Spacer()
                
                Text("Ingeniously calibrated. Nutrient-rich. Featuring 92%+ naturally derived formulas. Skincare that will help skin flourish and glow.")
                    .fontWeight(.ultraLight)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                HStack{
                    SwiftUIGIFPlayerView(gifName: "EL")
                        .frame(width: 370 ,height: 220)
                        .background(.pink)
                        .cornerRadius(10)
                        .padding()
                }
                .padding()
                
                VStack{
                    Text("About Nutritious")
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    
                }
                HStack {
                    
                    Image("EL_madewithout")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 190)
                        .cornerRadius(10)
                    
                    Image("EL_madewith")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 190)
                        .cornerRadius(10)
                    
                }
                
                Spacer()
                Spacer()
                Spacer()
              
                
                VStack{
                    
                    Text("Nutri-Q&A")
                        .fontWeight(.bold)
                        .font(.title)
                        .frame(width: 160, height: 75)
                        .background(.pink)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    
                       
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    VStack{
                        
                        Image("QWhatis")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .cornerRadius(10)
                        
                    }
                }
                
            }
                
                
                
                
      
            
            }
          
        
        }
        
            
        }
        
            
        



struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
