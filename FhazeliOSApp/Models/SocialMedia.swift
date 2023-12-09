//
//  SocialMedia.swift
//  FhazeliOSApp
//
//  Created by gdaalumno on 06/12/23.
//

import Foundation

struct SocialMedia: Identifiable {
    let id = UUID().uuidString
    var media: String
    var url: String
    var iconName: String
}

extension SocialMedia {
    static let mySocialMedia = [
        SocialMedia(media: "GitHub", url: "https://github.com/FernandoHazel", iconName: "GitHub"),
        SocialMedia(media: "Instagram", url: "https://www.instagram.com/fhazel_indiedev", iconName: "Instagram"),
        SocialMedia(media: "Twitter", url: "https://twitter.com/@fhazel92", iconName: "x")
    ]
}
