//
//  ProfileSummary.swift
//  Landmark
//
//  Created by Muhammad Rizki Siraj on 11/08/23.
//

import SwiftUI

struct ProfileSummary: View {
    @EnvironmentObject var modelData: ModelData
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .font(.title)
                    .bold()
                
                Text("Notifications: \(profile.preferNotification ? "on" : "off")")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: \(profile.goalDate, style: Text.DateStyle.date)")
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Completed Badges")
                        .font(.headline)
                        .bold()
                    HStack {
                        HikeBadges(name: "First hike")
                        HikeBadges(name: "Earth day")
                            .hueRotation(Angle(degrees: 90))
                        HikeBadges(name: "Tenth hike")
                            .grayscale(2)
                            .hueRotation(Angle(degrees: 45))
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Recent Hikes")
                        .font(.headline)
                        
                    HikeView(hike: modelData.hikes[0])
                }
            }
            
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}
