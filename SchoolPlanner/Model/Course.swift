//
//  Course.swift
//  SchoolPlanner
//
//  Created by Diego Sierraalta on 2021-03-22.
//

import Foundation

class Course: Identifiable {
    
    var id = UUID()
    var courseName: String
    
    internal init(id: UUID = UUID(), courseName: String) {
        self.id = id
        self.courseName = courseName
    }
}

let sampleCourse = [
    
    Course(courseName: "Math"),
    Course(courseName: "Science"),
    Course(courseName: "English")
]
