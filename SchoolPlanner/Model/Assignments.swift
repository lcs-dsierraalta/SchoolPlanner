//
//  Assignments.swift
//  SchoolPlanner
//
//  Created by Diego Sierraalta on 2021-03-22.
//

import Foundation

class Assignment: Identifiable, ObservableObject {
        
    var id = UUID()
    var assignmentName: String
    var description: String
    var completed: Bool
    @Published var priority: AssignmentPriority
    var dueDate = Date()
    
    internal init(id: UUID = UUID(), assignmentName: String, description: String, completed: Bool, priority: AssignmentPriority, dueDate: Date = Date()) {
        self.id = id
        self.assignmentName = assignmentName
        self.description = description
        self.completed = completed
        self.priority = priority
        self.dueDate = dueDate
    }
}

let testData = [
    Assignment(assignmentName: "Problem Set", description: "Problem solving using what we know about forces", completed: true, priority: .high),
    Assignment(assignmentName: "Energy Homework", description: "Page 4 of the Energy note package", completed: false, priority: .medium),
    Assignment(assignmentName: "Notes", description: "Complete notes on the Energy note package", completed: false, priority: .low)
]
