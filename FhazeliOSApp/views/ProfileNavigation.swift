//
//  ProfileNavigation.swift
//  FhazeliOSApp
//
//  Created by gdaalumno on 07/12/23.
//

import SwiftUI

struct ProfileNavigation: View {
    let profile: Person
    
    var body: some View {
        NavigationView {
            ProfileDescription(profile: profile)
        }
    }
}

struct ProfileNavigation_Previews: PreviewProvider {
    static var previews: some View {
        ProfileNavigation(profile: Person.myProfile)
            .navigationTitle("My profile")
    }
}
