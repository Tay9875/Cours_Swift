//
//  ArticleAPI.swift
//  Cours1
//
//  Created by MOREAU Talyha on 03/11/2025.
//
import SwiftUI
import PhotosUI

@Observable
class DataModel {
    var counter: Int = 1
    var todo: Todo?
    var todoList: [Todo] = []
    
    func fetchTodo() async {
        var concatenatedString: String = "https://jsonplaceholder.typicode.com/todos/" + String(counter)
        guard let url = URL(string: concatenatedString) else {
            return
        }
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200 else {
                return
            }
            
            let decoded = try JSONDecoder().decode(Todo.self, from: data)
            todo = decoded
        } catch {
            
        }

    }
    
    func fetchTodoList() async {
        var concatenatedString: String = "https://jsonplaceholder.typicode.com/todos/"
        guard let url = URL(string: concatenatedString) else {
            return
        }
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200 else {
                return
            }
            
            let decoded = try JSONDecoder().decode([Todo].self, from: data)
            todoList = decoded
        } catch {
            
        }

    }
}
