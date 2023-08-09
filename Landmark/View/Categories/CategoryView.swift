//
//  CategoryView.swift
//  Landmark
//
//  Created by Muhammad Rizki Siraj on 09/08/23.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { category in
                    CategoryRow(categoryName: category, items: modelData.categories[category]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(PlainListStyle())
                .navigationTitle("Featured")
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
            .environmentObject(ModelData())
    }
}
