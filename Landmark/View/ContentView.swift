//
//  ContentView.swift
//  Landmark
//
//  Created by Muhammad Rizki Siraj on 04/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
         LandmarkList()        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPad (10th generation)")
    }
}
