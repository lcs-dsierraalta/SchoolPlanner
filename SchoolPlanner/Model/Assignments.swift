//
//  Assignments.swift
//  SchoolPlanner
//
//  Created by Diego Sierraalta on 2021-03-22.
//

import Foundation

class Assignment: Identifiable {
    
    var id = UUID()
    var assignmentName: String
    var description: String
    var completed: Bool
    var priority: AssignmentPriority
    var dueDate = Date()
    
    init(<#parameters#>) {
        <#statements#>
    }
    
}
