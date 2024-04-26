//
//  MenuView.swift
//  OpenClassroomsProjects
//
//  Created by KEVIN on 22/04/2024.
//

import SwiftUI

struct MenuView: View {
    
    let tableOfMenus: TableOfMenus = TableOfMenus()
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationStack {
            List {
                Text("Entrées")
                    .font(.custom(TextFont.font700, size: 14))
                    .listRowBackground(Color.grayBackgroundList.opacity(0.0))
                    .position(CGPoint(x: 8.0, y: 35.0))
                ForEach(tableOfMenus.apetizerArray) { detailOfTheEntries in
                    ZStack {
                        MenuCellView(dish: detailOfTheEntries)
                        NavigationLink(destination: DescriptionOfTheDishView(dish: detailOfTheEntries)) {
                            EmptyView()
                        }
                        .opacity(0)
                    }
                }
                Text("Plats Principaux")
                    .font(.custom(TextFont.font700, size: 14))
                    .listRowBackground(Color.grayBackgroundList.opacity(0.0))
                    .padding(.top, -20)
                    .position(CGPoint(x: 35, y: 35.0))
                ForEach(tableOfMenus.mainCourseArray) { detailOfTheDishes in
                    ZStack {
                        MenuCellView(dish: detailOfTheDishes)
                        NavigationLink(destination: DescriptionOfTheDishView(dish: detailOfTheDishes)) {
                            EmptyView()
                        }
                        .opacity(0)
                    }
                }
            }
            .foregroundStyle(.customLightGray)
            .listRowSpacing(10)
            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.black)
                    }
                }
            }
            .padding(.top, -40)
        }
    }
}

#Preview {
    MenuView()
}
