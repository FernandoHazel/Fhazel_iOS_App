//
//  Project.swift
//  FhazeliOSApp
//
//  Created by gdaalumno on 06/12/23.
//

import Foundation

struct Project: Identifiable {
    let id: String = UUID().uuidString // Create a unique identifier.
    var title: String
    var description: String
    var rating: Float
    var photos: [String]
}

extension Project {
    static let myProjects = [
        Project(
            title: "Swift Course",
            description: "Learn to develop swift apps",
            rating: 4,
            photos: []
        ),
        Project(
            title: "Kotlin Course",
            description: "Learn to develop Kotlin apps",
            rating: 5,
            photos: []
        ),
        Project(
            title: "Unity Course",
            description: "Learn to develop Unity apps",
            rating: 5,
            photos: []
        ),
        Project(
            title: ".NET MAUI Course",
            description: "Learn to develop MAUI apps",
            rating: 3,
            photos: []
        )
    ]
}
