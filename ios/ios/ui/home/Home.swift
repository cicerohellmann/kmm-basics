//
//  Home.swift
//  ios
//
//  Created by Cicero Hellmann on 3/10/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct Home: View {
    @Binding var user : User
    let saveAction: () -> Void
    var body: some View {
        TabView {
            Pacients()
                .tabItem {
                    Image(systemName: "circle")
                    Text("Tab1")
                }   .navigationBarHidden(true)

            Profile(saveAction: saveAction)
                .tabItem {
                    Image(systemName: "circle")
                    Text("Tab2")
                }.navigationBarHidden(true)
        }
    }
}
