//
//  MySocialMedia.swift
//  FhazeliOSApp
//
//  Created by gdaalumno on 07/12/23.
//

import SwiftUI

struct MySocialMedia: View {
    let socialMedia: [SocialMedia]
    
    var body: some View {
        List {
            ForEach(socialMedia) { media in
                Link(destination: URL(string: media.url) ?? URL(string: "www.google.com")!){
                    Text(media.media)
                }
            }
        }
    }
}

struct MySocialMedia_Previews: PreviewProvider {
    static var previews: some View {
        MySocialMedia(socialMedia: SocialMedia.mySocialMedia)
    }
}
