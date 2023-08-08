//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Muhammad Rizki Siraj on 04/08/23.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData();
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
