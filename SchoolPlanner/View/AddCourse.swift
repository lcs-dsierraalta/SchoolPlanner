//
//  AddCourse.swift
//  SchoolPlanner
//
//  Created by Diego Sierraalta on 2021-03-22.
//

import SwiftUI

struct AddCourse: View {
    
    //Details of new course
    @State private var courseName = ""
    
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
        
        
    }
    
}

struct AddCourse_Previews: PreviewProvider {
    static var previews: some View {
        AddCourse()
    }
}
