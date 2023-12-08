//
//  ProjectDetail.swift
//  FhazeliOSApp
//
//  Created by gdaalumno on 07/12/23.
//

import SwiftUI

struct ProjectDetail: View {
    let project: Project
    
    var body: some View {
        List {
            Text(project.description)
            Text(project.rating, format: .number) +
            Text(" / 5 rating")
        }
        .navigationTitle(project.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProjectDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProjectDetail(project: Project.myProjects[0])
        }
    }
}
