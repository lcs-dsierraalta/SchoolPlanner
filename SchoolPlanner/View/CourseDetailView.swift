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
            AssignmentCell(assignment: assignment)
        }
    }
}

struct CourseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailView(storeA: testStore)
    }
}
