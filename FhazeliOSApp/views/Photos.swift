//
//  Photos.swift
//  FhazeliOSApp
//
//  Created by gdaalumno on 08/12/23.
//

import SwiftUI

struct Photos: View {
    let photosNames: [String]
    
    var body: some View {
        TabView {
            ForEach(photosNames, id: \.self) { photo in
                Image(photo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.horizontal)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos(photosNames: Person.myProfile.photos)
    }
}
