//
//  Profile.swift
//  FhazeliOSApp
//
//  Created by gdaalumno on 07/12/23.
//

import SwiftUI

struct ProfileDescription: View {
    let profile: Person
    let columns = Array(repeating: GridItem(.flexible()), count: 2)

    var body: some View {
        ScrollView{
            PersonProfile(profilePictureUrl: profile.photo, name: profile.name)
            
            LeadingAlignedText(text: "Hobbies")
                .font(.headline)
            
            LazyVGrid(columns: columns, content: {
                ForEach(profile.hobbies, id: \.hashValue) {hobby in
                    GroupBox{
                        Text(hobby)
                            .frame(maxWidth: .infinity)
                    }
                    
                }
            })
            .padding(.horizontal)
            
            Divider()
            
            LeadingAlignedText(text: "Projects")
                .font(.headline)
            
            LazyVGrid(columns: self.columns) {
                ForEach(profile.projects) {project in
                    GroupBox{
                        NavigationLink {
                            ProjectDetail(project: project)
                        } label: {
                            Text(project.title)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(.primary)
                        }
                        
                    }
                }
            }
            .padding(.horizontal)
            
            Divider()
            
            LeadingAlignedText(text: "Photos")
                .font(.headline)
            
            Photos(photosNames: profile.photos)
                .frame(height: 400)
        }
    }
}

struct LeadingAlignedText: View{
    let text: String
    
    var body: some View{
        HStack {
            Text(text)
            Spacer()
        
        }
        .padding()
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileDescription(profile: Person.myProfile)
        }
    }
}
