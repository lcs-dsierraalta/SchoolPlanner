//
//  AssignmentStore.swift
//  SchoolPlanner
//
//  Created by Diego Sierraalta on 2021-03-22.
//

import Foundation

class AssignmentStore: ObservableObject {
    @Published var assignments: [Assignment]
    
    init(assignments: [Assignment] = []) {
        self.assignments = assignments
    }
}

let testStore = AssignmentStore(assignments: testData)
