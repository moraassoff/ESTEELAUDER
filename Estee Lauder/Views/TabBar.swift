//
//  TabBar.swift
//  Estee Lauder
//
//  Created by Sofia Mora Gómez on 2/8/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
        
            ContentsView()
                .tabItem{
                    Label("Shop", systemImage: "cart.fill")
                }
            QuizView()
                .tabItem {
                    
                    Label("My Skin", systemImage: "person.circle.fill")
                }
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            RutineView()
                .tabItem {
                    Label("Rutines", systemImage: "checklist")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
