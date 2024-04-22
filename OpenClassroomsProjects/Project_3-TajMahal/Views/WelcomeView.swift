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
            RestaurantInfoView()
            Spacer()
            VStack {
                ForEach(details) { detail in
                    RestaurantDetailView(detailData: detail)
                }
            }
            Spacer()
            NavigationLink {
                // Mettre lien vers MenuView
            } label : {
                Text("Accéder au menu")
                    .foregroundStyle(Color.white)
                    .font(.custom(TextFont.font700, size: 16))
            }
            .frame(width: 335, height: 40)
            .background(.customRed)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            Spacer()
        }
    }
}

#Preview {
    WelcomeView()
}
