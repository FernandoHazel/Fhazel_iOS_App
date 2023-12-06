//
//  Home.swift
//  FhazeliOSApp
//
//  Created by gdaalumno on 05/12/23.
//

import SwiftUI

struct Home: View {
    @State private var isToggleOn = true
    @State private var texto = ""
    
    var body: some View {
        ScrollView {
            Text("Fernando")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
            Text("Me gusta swift")
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
            Rectangle()
                .frame(height: 50)
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 100)
            Toggle(isOn: $isToggleOn) {
                Text("En clase")
            }
            TextField("Cuadro de texto", text: $texto)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .opacity(0.2)
                )
        }
        .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
