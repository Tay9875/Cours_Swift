//
//  ProfileInAccueilView.swift
//  Cours1
//
//  Created by MOREAU Talyha on 03/11/2025.
//
import SwiftUI

struct ProfileView: View {
    @State var profileModel = ProfileModel()
    
    var body: some View {
        VStack {
            Text("Profile")
                .font(.title)
                .bold()
            
            Image("avatar")
                .resizable()
                .frame(width: 100, height: 100)
                .scaledToFit()
                .padding(10)
            
            Text("Hello \(profileModel.name) \(profileModel.lastName)")
            Text("\(profileModel.email)")
            Text("Age: \(profileModel.age) years old")
            
            Button("Changer"){
                
            }.buttonStyle(.borderedProminent)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

#Preview {
    ProfileView()
}
