//
//  FruitModel.swift
//  Fruits
//
//  Created by Puscas Paul on 27.07.2023.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct FruitModel: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
