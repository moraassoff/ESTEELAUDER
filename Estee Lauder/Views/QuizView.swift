//
//  QuizView.swift
//  Estee Lauder
//
//  Created by Sofia Mora Gómez on 2/8/23.
//

import SwiftUI
import SSSwiftUIGIFView

struct QuizView: View {
    
    @State var backDegree = 0.0
    @State var frontDegree = -90.0
    @State var isFlipped = false

    let width : CGFloat = 200
    let height : CGFloat = 250
    let durationAndDelay : CGFloat = 0.3

    //MARK: Flip Card Function
    func flipCard () {
        isFlipped = !isFlipped
        if isFlipped {
            withAnimation(.linear(duration: durationAndDelay)) {
                backDegree = 90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                frontDegree = 0
            }
        } else {
            withAnimation(.linear(duration: durationAndDelay)) {
                frontDegree = -90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                backDegree = 0
            }
        }
    }
    var body: some View {
        ScrollView{
            VStack{
                
                
                Text("Nourish Your Skin, Embrace Your Glow With Nutritious")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                Spacer()
                HStack{
                    Image("ESTEELOGO")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } .padding()
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
                    
                    HStack{
                        Text("Ingeniously calibrated. Nutrient-rich. Featuring 92%+ naturally derived formulas. Skincare that will help skin flourish and glow.")
                            .fontWeight(.thin)
                            .font(.title2)
                            .multilineTextAlignment(.center)
                            .padding()
                            
                    }.padding()
                    
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
                    Text("Click on the cards to reveal the answer!")
                        .fontWeight(.light)
                        .font(.headline)
                        .foregroundColor(Color.pink)
                        .frame(width: 300, height: 40 )
                    Spacer()
                }
                
            }
            
            ZStack {
                CardFront1(width: width, height: height, degree: $frontDegree)
                CardBack1(width: width, height: height, degree: $backDegree)
            }.onTapGesture {
                flipCard ()
            }
            
            
                
            ZStack {
                CardFront2(width: width, height: height, degree: $frontDegree)
                CardBack2(width: width, height: height, degree: $backDegree)
            }.onTapGesture {
                flipCard ()
            }
                
            ZStack {
                CardFront3(width: width, height: height, degree: $frontDegree)
                CardBack3(width: width, height: height, degree: $backDegree)
            }.onTapGesture {
                flipCard ()
            }
      
            
            }
          
        
        }
        
            
        }


//1ST CARD
struct CardBack1 : View {
    let width : CGFloat
    let height : CGFloat
    @Binding var degree : Double
    
    var body: some View {
        VStack{
            
            Image("QWhatis")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .cornerRadius(10)
            
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}
struct CardFront1 : View {
    let width : CGFloat
    let height : CGFloat
    @Binding var degree : Double
    
    var body: some View {
        VStack {
            Image("Whatis1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .cornerRadius(10)
            
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
        
        
    }
}


//2ND CARD

struct CardBack2 : View {
    let width : CGFloat
    let height : CGFloat
    @Binding var degree : Double
    
    var body: some View {
        VStack{
            
            Image("edited6Essentia.jpg")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .cornerRadius(10)
            
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}
struct CardFront2 : View {
    let width : CGFloat
    let height : CGFloat
    @Binding var degree : Double
    
    var body: some View {
        VStack {
            Image("6EssentialA")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .cornerRadius(10)
            
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
        
        
    }
}

//3RD CARD

struct CardBack3 : View {
    let width : CGFloat
    let height : CGFloat
    @Binding var degree : Double
    
    var body: some View {
        VStack{
            
            Image("QWhatis")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .cornerRadius(10)
            
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}
struct CardFront3 : View {
    let width : CGFloat
    let height : CGFloat
    @Binding var degree : Double
    
    var body: some View {
        VStack {
            Image("Whatis2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .cornerRadius(10)
            
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
        
        
    }
}

        
            
        



struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
