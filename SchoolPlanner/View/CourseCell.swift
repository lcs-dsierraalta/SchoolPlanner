//
//  CourseCell.swift
//  SchoolPlanner
//
//  Created by Diego Sierraalta on 2021-03-22.
//

import SwiftUI

struct CourseCell: View {
    
    var course: Course
    
    var body: some View {
        Text(course.courseName)
    }
}

struct CourseCell_Previews: PreviewProvider {
    static var previews: some View {
        CourseCell(course: sampleCourse[0])
    }
}
