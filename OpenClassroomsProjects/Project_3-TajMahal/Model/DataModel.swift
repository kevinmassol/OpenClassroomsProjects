//
//  DataModel.swift
//  OpenClassroomsProjects
//
//  Created by KEVIN on 25/03/2024.
//

import Foundation

enum SpiceLevel {
    case light
    case medium
    case hot
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
