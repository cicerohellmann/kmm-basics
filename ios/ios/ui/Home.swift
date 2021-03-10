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
    @State private var login: String = ""
    @State private var password: String = ""
    let saveAction: () -> Void
    var body: some View {
        VStack(alignment: .center
        ) {
            Spacer()
            Spacer()
            TextField("Login", text: $login).multilineTextAlignment(.center)
            TextField("Password", text: $password).multilineTextAlignment(.center)
            Spacer()
            Button(action: {
                self.user.isLogged = true
                self.saveAction()
                    
            })
            {
                Text("Pop to root")
            }
            Spacer()
        }
    }
}
