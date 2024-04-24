//
//  MenuCellView.swift
//  OpenClassroomsProjects
//
//  Created by KEVIN on 24/04/2024.
//

import SwiftUI

struct MenuCellView: View {
    
    let dish: Dish
    
    var body: some View {
        HStack(spacing: 18) {
            Image(dish.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 112, height: 86)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment:.leading, spacing: 10) {
                Text(dish.name)
                    .font(.custom(TextFont.font600, size: 14))
                    .foregroundStyle(.customLightGray)
                Text(dish.description)
                    .font(.custom(TextFont.font400, size: 12))
                    .foregroundStyle(.customGray)
                HStack {
                    Text(dish.price)
                        .font(.custom(TextFont.font600, size: 12))
                        .foregroundStyle(.customLightGray)
                    Spacer()
                    PepperView(spiceLevel: dish.spiceLevel)
                }
            }
        }
        .frame(width: 335, height: 110)
    }
}

#Preview {
    MenuCellView(dish: TableOfMenus().apetizerArray[0])
}
