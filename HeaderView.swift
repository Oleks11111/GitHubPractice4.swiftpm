//
//  HeaderView.swift
//  GitHubPractice4
//
//  Created by Oleksandr Andrusyshyn on 9/16/26.
//
import SwiftUI

struct HeaderView: View {
    @Binding var tasks: [Task]
    @State var typeIn = ""
    
    var body: some View{
        
        HStack {
            
            TextField("Enter a task", text: $typeIn)
            
            Button("Add"){
                tasks.append(Task(nameOfTask: typeIn))
            }
        }
    }
}
