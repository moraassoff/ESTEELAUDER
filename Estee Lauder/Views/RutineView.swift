//
//  RutineView.swift
//  Estee Lauder
//
//  Created by Sofia Mora Gómez on 2/8/23.
//

import SwiftUI
struct FeelingEntry: Identifiable {
    let id = UUID()
    var date: Date
    var emoji: String
}
struct RutineView: View {
    
    
    @State private var date = Date()
        @State private var emoji = ""
        @State private var entries: [FeelingEntry] = []
    
    
    var body: some View {
        ScrollView{
            VStack{
                
                
                Image("ESTEELOGO")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Text("Your Nutritious Ritual: Unleash Your Inner Glow!")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                Image("skincare_EL")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .frame(width: 370, height: 400)
                
                Text("Track your daily rutine with Nutritious")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    
             
                
                
            }
            
            
            
            VStack{
                
                //HERE GOES THE CALENDAR FOR THE RUTINES
                Text("HOW DOES YOUR SKIN FEEL TODAY?")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                    .padding(.top)
                    .padding(.top)
                    
                Form {
                    Section(header: Text("Select Date")){
                        DatePicker(selection: $date, in: ...Date(), displayedComponents: .date) {
                            Text("Date")
                        }
                    }
                    
                    Section(header: Text("Enter answer")) {
                        TextField("My skin feels", text: $emoji)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            
                    }
                }
                .padding(.bottom)
                .padding(.top)
                .padding(.top)
                .frame(width: 370.0, height: 320.0)
                .cornerRadius(15)
                Spacer()
                Button(action: addEntry) {
                    Text("Add Entry")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .frame(width: 100, height: 40)
                        .background(Color(hue: 0.968, saturation: 0.763, brightness: 0.661, opacity: 0.632))
                        .cornerRadius(30)
                        .padding(.top)
                    
                        
                            }
         
                    List(entries) { entry in
                        HStack {
                            Text("\(entry.date, formatter: DateFormatter.date)")
                            Spacer()
                            Text(entry.emoji)
                    }
                }

                .padding()
                    
                    
                Spacer()
            }
            .background(Color(red: 0.839, green: 0.355, blue: 0.455))
            .cornerRadius(20)
            
        }
        
    }
    
    
    
    private func addEntry() {
        let entry = FeelingEntry(date: date, emoji: emoji)
        entries.append(entry)
        emoji = ""
    }
    
    
}

extension DateFormatter {
    static let date: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter
    }()
}

struct RutineView_Previews: PreviewProvider {
    static var previews: some View {
        RutineView()
    }
}
