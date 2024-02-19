//
//  AnimalDetailVew.swift
//  OpenClassroomsProjects
//
//  Created by KEVIN on 19/02/2024.
//

import SwiftUI

// Affiche le detail des informations pour un animal donné
struct AnimalDetailView: View {
    
    let animal: Animal
    
    var body: some View {
        VStack {
            Image(systemName: getImageName(breed: animal.breed))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .foregroundColor(.green)
                .padding()
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.green, lineWidth: 5)
                }
                .frame(width: 100, height: 100)
            GroupBox(label: Label("Description", systemImage: "list.clipboard")) {
                VStack(alignment: .leading) {
                    LineView(title: "Nom", value: animal.name)
                    LineView(title: "Race", value: animal.breed.rawValue)
                    LineView(title: "Age", value: "\(animal.age) an(s)")
                    LineView(title: "Poids", value: "\(animal.weight) kg")
                    LineView(title: "Taille", value: "\(animal.size) cm") // Ajout de la taille dans le détail de l'animal
                }
                .padding()
            }
            .padding()
        }
        Spacer()
    }
    
    // Represente la vue d'une ligne qui permet de visualiser le champs et sa valeur
    struct LineView : View {
        
        let title: String
        let value: String
        
        var body: some View {
            HStack {
                Text("\(title) : ")
                Spacer()
                Text(value)
            }
        }
    }
}

#Preview {
    AnimalDetailView(animal: Animal(name: "Max", breed: .dog, age: 5, weight: 8, size: 20))
}
