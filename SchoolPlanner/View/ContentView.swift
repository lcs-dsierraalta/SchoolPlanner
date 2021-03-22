//
//  ContentView.swift
//  SchoolPlanner
//
//  Created by Diego Sierraalta on 2021-03-16.
//

import SwiftUI

struct ContentView: View {
    
    //Stores all courses that are being tracked
    @ObservedObject var store: CourseStore
    
    //Controls whether the add course view is showing
    @State private var showingAddCourse = false
    
    var body: some View {
        List(store.courses) { course in
            CourseCell(course: course)
        }
        .navigationTitle("Courses")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("Add") {
                    showingAddCourse = true
                }
            }
        }
        .sheet(isPresented: $showingAddCourse) {
            AddCourse(showing: $showingAddCourse)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(store: testCourse)
        }
    }
}
