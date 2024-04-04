//
//  WelcomeView.swift
//  OpenClassroomsProjects
//
//  Created by KEVIN on 19/03/2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            Image(.tajMahal)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 335, height: 423)
            Spacer()
        }
    }
}

#Preview {
    WelcomeView()
}
