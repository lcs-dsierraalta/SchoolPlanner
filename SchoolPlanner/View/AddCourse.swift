//
//  AddCourse.swift
//  SchoolPlanner
//
//  Created by Diego Sierraalta on 2021-03-22.
//

import SwiftUI

struct AddCourse: View {
    
    //Get a reference to the store of courses (CourseStore)
    @ObservedObject var store: CourseStore
    
    //Details of new course
    @State private var courseName = ""
    
    //Whether to show this view
    @Binding var showing: Bool
    
    var body: some View {
        NavigationView{
            Form {
                TextField("Course Name", text: $courseName)
            }
            .navigationTitle("New Course")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Save") {
                        saveCourse()
                    }
                }
            }
        }
    }
    
    func saveCourse() {
        
        //Add the course to the list of courses
        store.courses.append(Course(courseName: courseName))
        
        //Dismiss view
        showing = false
        
    }
    
}

struct AddCourse_Previews: PreviewProvider {
    static var previews: some View {
        AddCourse(store: testCourse, showing: .constant(true))
    }
}
