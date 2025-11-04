//
//  ArticleAPI.swift
//  Cours1
//
//  Created by MOREAU Talyha on 03/11/2025.
//
import SwiftUI
import PhotosUI

struct DataView: View {
    @State var dataModel = DataModel()
    @State private var isPickerPresented = false
    
    
    var body: some View {
        VStack {
            Text("Citation n°\(dataModel.counter) in list:")
            Text("\(dataModel.todo?.title ?? "Loading...")")
            
            Button("Increment"){
                Task {
                    dataModel.counter += 1
                    await dataModel.fetchTodo()
                }
            }
            .buttonStyle(.borderedProminent)
            
            Button("Reset"){
                Task {
                    dataModel.counter = 1
                    await dataModel.fetchTodo()
                }
            }
            .buttonStyle(.borderedProminent)
        }
        List(dataModel.todoList){ todo in
            Text("\(todo.title)")
        }
        .task{
            await dataModel.fetchTodoList()
        }
        
    }
}

#Preview {
    DataView()
}
