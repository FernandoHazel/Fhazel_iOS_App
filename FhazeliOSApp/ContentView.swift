//
//  ContentView.swift
//  FhazeliOSApp
//
//  Created by gdaalumno on 07/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ProfileNavigation(profile: Person.myProfile)
                .tag("profile")
                .tabItem {
                    Label("My profile", systemImage: "person.circle")
                }
            MySocialMedia(socialMedia: SocialMedia.mySocialMedia)
                .tag("SocialMedia")
                .tabItem {
                    Label("Social Media", systemImage: "network")
                }
            ProjectList(projects: Person.myProfile.projects)
                .tag("projects")
                .tabItem {
                    Label("Projects", systemImage: "folder")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
