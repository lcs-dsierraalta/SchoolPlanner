//
//  AssignmentCell.swift
//  SchoolPlanner
//
//  Created by Diego Sierraalta on 2021-03-23.
//

import SwiftUI

struct AssignmentCell: View {
    
    var assignment: Assignment
    
    var body: some View {
        HStack {
            Image(systemName: assignment.completed ? "checkmark.circle.fill" : "circle")
                .onTapGesture {
                    
                    assignment.completed.toggle()
                    
                }
            
            Text(assignment.assignmentName)
        }

    }
}

struct AssignmentCell_Previews: PreviewProvider {
    static var previews: some View {
        AssignmentCell(assignment: testData[0])
    }
}
