//
//  classroomsApp.swift
//  classrooms
//
//  Created by Hanâa Belhamidi on 28/08/2023.
//

import SwiftUI

@main
struct classroomsApp: App {
    var body: some Scene {
        WindowGroup {
            // Ici aussi on met en paramètre cours pour atteindre le 1er cours de la liste
            CoursesView(course: Course.list[0])
        }
    }
}
