//
//  PersonProfileView.swift
//  FhazeliOSApp
//
//  Created by gdaalumno on 06/12/23.
//

import SwiftUI

struct PersonProfileView: View {
    let profilePictureUrl: String
    let name: String
    var pictureUrl: URL? {
        URL(string: profilePictureUrl)
    }
    
    var body: some View {
        ZStack (alignment: .bottom){
            AsyncImage(url: pictureUrl) {
                image in image.image?
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 250)
                    .overlay(Material.bar, in:
                        Circle()
                        .stroke(lineWidth: 5)
                    )
            }
            Text(name)
                .font(.title3)
                .padding(10)
                .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
        }
    }
}

struct PersonProfileView_Previews: PreviewProvider {
    static var previews: some View {
        PersonProfileView(profilePictureUrl:
                            Person.myProfile.photo,
                          name: Person.myProfile.name)
    }
}
