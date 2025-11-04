//
//  ViewModel.swift
//  Cours1
//
//  Created by MOREAU Talyha on 03/11/2025.
// créer une app avec un bouton 'Reset' et un bouton '+10'
import SwiftUI

struct CounterView: View {
    @State var viewModel = CounterModel()
    
    
    var body: some View {
        VStack {
            Text("Count: \(viewModel.counter)")
            
            HStack {
                Button("Reset", action: {
                    viewModel.counter = 0
                })
                .buttonStyle(.borderedProminent)
                
                Button("Increment +10", action: {
                    viewModel.counter += 10
                })
                .buttonStyle(.borderedProminent)
            }
        }
        
    }
}

#Preview {
    CounterView()
}
