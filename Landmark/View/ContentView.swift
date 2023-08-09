//
//  ContentView.swift
//  Landmark
//
//  Created by Muhammad Rizki Siraj on 04/08/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView {
            CategoryView()
                .tag(Tab.featured)
                .tabItem {
                    Label("Featured", systemImage: "star.fill")
                }
            
            LandmarkList()
                .tag(Tab.list)
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
        }
        
    }
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14 Pro Max")
            .environmentObject(ModelData())
    }
}
