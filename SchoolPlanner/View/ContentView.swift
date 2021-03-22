//
//  ContentView.swift
//  SchoolPlanner
//
//  Created by Diego Sierraalta on 2021-03-16.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var store: CourseStore
    
    var body: some View {
        List(store.courses) { course in
            CourseCell(course: course)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: testCourse)
    }
}
