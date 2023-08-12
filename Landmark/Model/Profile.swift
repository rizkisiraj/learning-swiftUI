//
//  Profile.swift
//  Landmark
//
//  Created by Muhammad Rizki Siraj on 11/08/23.
//

import Foundation

struct Profile {
    var username: String
    var preferNotification: Bool = false
    var seasonalPhoto: Season = Season.winter
    var goalDate: Date = Date()
    
    static let `default` = Profile(username: "jordan_pmc")
    
    enum Season: String, CaseIterable, Identifiable {
            case spring = "🌷"
            case summer = "🌞"
            case autumn = "🍂"
            case winter = "☃️"


            var id: String { rawValue }
    }
}
