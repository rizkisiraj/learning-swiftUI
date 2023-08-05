//
//  ContentView.swift
//  Landmark
//
//  Created by Muhammad Rizki Siraj on 04/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
         VStack {
            MapView()
                 .frame(height: 300)
                 .ignoresSafeArea()
            
            CircleImage()
                 .offset(y: -180)
                 .padding(.bottom, -180)
             
            VStack(alignment: .leading) {
                    Text("Turtle Rock")
                            .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    
                    Spacer()
                    
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                    .padding(.bottom, 4)
                
                Text("Turtle Rock is a unique and picturesque geological formation found in various locations around the world. It typically refers to a large rock or set of rocks that resemble the shape of a turtle's shell, hence the name.")
            
            }.padding()
             
             Spacer()
         }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
