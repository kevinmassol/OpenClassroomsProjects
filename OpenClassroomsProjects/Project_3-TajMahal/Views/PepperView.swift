//
//  PepperView.swift
//  OpenClassroomsProjects
//
//  Created by KEVIN on 24/04/2024.
//

import SwiftUI

struct PepperView: View {
    
    let spiceLevel: SpiceLevel
    
    func spiceLevelImages(level: SpiceLevel) -> some View {
        
        let redPepperImage = Image(.pimentRed)
            .resizable()
            .frame(width: 12, height: 12)
        let grayPepperImage = Image(.piment)
            .resizable()
            .frame(width: 12, height: 12)
        
        return HStack(spacing: 6) {
            ForEach(0..<level.rawValue, id: \.self) { spiceLevel in
                redPepperImage
            }
            ForEach(level.rawValue..<SpiceLevel.hot.rawValue, id: \.self) { spiceLevel in
                grayPepperImage
            }
        }
    }
    
    var body: some View {
        spiceLevelImages(level: spiceLevel)
            .frame(width: 58, height: 14)
    }
}

#Preview {
    PepperView(spiceLevel: .light)
}
