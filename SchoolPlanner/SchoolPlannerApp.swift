//
//  SchoolPlannerApp.swift
//  SchoolPlanner
//
//  Created by Diego Sierraalta on 2021-03-16.
//

import SwiftUI

@main
struct SchoolPlannerApp: App {
    
    @StateObject private var store = CourseStore(courses: sampleCourse)
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(store: store)
            }
        }
    }
}
