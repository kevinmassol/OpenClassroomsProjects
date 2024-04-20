//
//  DataModel.swift
//  OpenClassroomsProjects
//
//  Created by KEVIN on 25/03/2024.
//

import Foundation

enum SpiceLevel: Int, CaseIterable {
    case light = 1
    case medium = 2
    case hot = 3
}

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let allergens: String
    let ingredients: String
    let spiceLevel: SpiceLevel
    let imageName: String
    let price: String
}

struct TextFont {
    static let font700 = "PlusJakartaSans-Bold-700"
    static let font600 = "PlusJakartaSans-SemiBold-600"
    static let font400 = "PlusJakartaSans-Regular-400"
}
