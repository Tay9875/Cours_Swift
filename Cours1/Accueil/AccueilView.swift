//
//  Cours1App.swift
//  Cours1
//
//  Created by MOREAU Talyha on 03/11/2025.
// créer une app avec 2 écrans: "Accueil" -> "Détails d'un produit"

import SwiftUI

struct AccueilView: View {
    
    var body: some View {
        Text("Accueil")
            .font(.title)
            .bold()
        NavigationStack{
            NavigationLink("Need to count ?"){
                CounterView()
            }
            NavigationLink("Need a random citation ? ?"){
                DataView()
            }
            NavigationLink("Profile"){
                ProfileView()
            }
        }
    }
}

#Preview {
    AccueilView()
}
