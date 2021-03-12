//
//  RootView.swift
//  ios
//
//  Created by Cicero Hellmann on 3/10/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI
import common

struct Root: View {
    @ObservedObject var userData = UserData()
    
    var body: some View {
        if(userData.user.isLogged){
            NavigationView {
                Home(user: $userData.user){
                    userData.save()
                }
            }.onAppear {
                userData.load()
            }
        }else{
            NavigationView {
                Login(user: $userData.user){
                    userData.save()
                }
            }.onAppear {
                userData.load()
            }
        }
    }
}

struct RootPreviews: PreviewProvider {
    static var previews: some View {
        Root()
    }
}
