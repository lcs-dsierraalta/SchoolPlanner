//
//  CourseDetailView.swift
//  SchoolPlanner
//
//  Created by Diego Sierraalta on 2021-03-22.
//

import SwiftUI

struct CourseDetailView: View {
    
   @ObservedObject var storeA: AssignmentStore
    
    var body: some View {
        List(storeA.assignments) { assignment in
            HStack {
                Image(systemName: assignment.completed ? "checkmark.circle.fill" : "circle")
                    .onTapGesture {
                        assignment.completed.toggle()
                    }
                
                Text(assignment.assignmentName)
            }
        }
    }
}

struct CourseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailView(storeA: testStore)
    }
}
