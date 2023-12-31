//
//  LandmarkRow.swift
//  Landmark
//
//  Created by Muhammad Rizki Siraj on 06/08/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark;
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: ModelData().landmarks[2])
            LandmarkRow(landmark: ModelData().landmarks[2])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
