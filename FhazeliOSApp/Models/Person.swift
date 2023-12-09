//
//  Product.swift
//  FhazeliOSApp
//
//  Created by gdaalumno on 06/12/23.
//

import Foundation

struct Person {
    var name: String
    var photo: String
    var hobbies: [String]
    var projects: [Project]
    var socialMedia: [SocialMedia]
    var photos: [String]
    
    init(name: String, photo: String, hobbies: [String], projects: [Project], socialMedia: [SocialMedia], photos: [String]) {
        self.name = name
        self.photo = photo
        self.hobbies = hobbies
        self.projects = projects
        self.socialMedia = socialMedia
        self.photos = photos
    }
}

extension Person {
    static let myProfile = Person(
        name: "Fernando Hazel",
        photo: "https://i.postimg.cc/rFTjHSY2/PXL-20230413-222831589.jpg",
        hobbies: ["Coding", "Gaming", "Sports", "Reading"],
        projects: Project.myProjects,
        socialMedia: SocialMedia.mySocialMedia,
        photos: ["Gorra_Bears", "Gorra_Negra", "Silla_Gamer"]
    )
}
