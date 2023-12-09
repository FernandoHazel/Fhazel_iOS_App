//
//  ProjectList.swift
//  FhazeliOSApp
//
//  Created by gdaalumno on 08/12/23.
//

import SwiftUI

struct ProjectList: View {
    @State private var searching = ""
    let projects: [Project]
    var filteredProjects: [Project] {
        if searching.isEmpty {
            return projects
        }
        
        return projects.filter { projects in
            projects.title.clean().lowercased().contains(searching.lowercased())
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredProjects) { project in
                NavigationLink {
                    ProjectDetail(project: project)
                } label: {
                    VStack(alignment: .leading){
                        HStack {
                            Text(project.title)
                                .font(.title3)
                                .bold()
                            
                            Spacer()
                            
                            Text(project.rating, format: .number)
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }
                        Text(project.description)
                            .lineLimit(1)
                    }
                }
            }
            .navigationTitle("Projects")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searching)
        }
    }
}

struct ProjectList_Previews: PreviewProvider {
    static var previews: some View {
        ProjectList(projects: Person.myProfile.projects)
    }
}
