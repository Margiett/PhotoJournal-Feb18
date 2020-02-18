//
//  UserPreference.swift
//  PhotoJournal Feb18
//
//  Created by Margiett Gil on 2/18/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import Foundation
import UIKit

struct UserPreferenceKey {
    static let color = "Color"
    static let scrollDirection = "Scroll Direction"
}

class UserPreference {
    
    private init() {}
    
    static let shared = UserPreference()
    
    func updateColor(with color: Int) {
        UserDefaults.standard.set(color, forKey: UserPreferenceKey.color)
    }
    func getColor() -> Int? {
        guard let bgColor = UserDefaults.standard.object(forKey: UserPreferenceKey.color) as? Int else {
            return nil
        }
        return bgColor
    }
    func updateDirection(with direction: ScrollDirection.RawValue) {
        UserDefaults.standard.set(direction, forKey: UserPreferenceKey.scrollDirection)
    }
    func getDirection() -> ScrollDirection.RawValue? {
        guard let direction = UserDefaults.standard.object(forKey: UserPreferenceKey.scrollDirection) as? String else {
            return nil
        }
        return direction
    }
    
}
