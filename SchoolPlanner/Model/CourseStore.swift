//
//  CourseStore.swift
//  SchoolPlanner
//
//  Created by Diego Sierraalta on 2021-03-22.
//

import Foundation

class CourseStore: ObservableObject {
    @Published var courses: [Course]
    
    init(courses: [Course] = []) {
        self.courses = courses
    }
}

let testCourse = CourseStore(courses: sampleCourse)
