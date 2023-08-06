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
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[2])
            LandmarkRow(landmark: landmarks[2])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
