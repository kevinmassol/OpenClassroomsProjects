//
//  RestaurantDetail.swift
//  OpenClassroomsProjects
//
//  Created by KEVIN on 04/04/2024.
//

import Foundation

struct RestaurantDetail: Identifiable {
    let id = UUID()
    let icon: String
    let leftText: String
    let rightText: String
}

let details: [RestaurantDetail] = [
    RestaurantDetail(icon: "horloge", leftText: "Mardi", rightText: "11h30 - 14h30・ 18h30 - 22h00"),
    RestaurantDetail(icon: "service", leftText: "Type de Service", rightText: "À emporter"),
    RestaurantDetail(icon: "localisation", leftText: "12 Avenue de la Brique - 75010 Paris", rightText: ""),
    RestaurantDetail(icon: "globe", leftText: "www.tajmahal.fr", rightText: ""),
    RestaurantDetail(icon: "phone", leftText: "06 12 34 56 78", rightText: "")
]
