//
//  RootView.swift
//  ios
//
//  Created by Cicero Hellmann on 3/10/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct Login: View {
    @Binding var shouldPopToRootView : Bool
    @State private var login: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack(alignment: .center
        ) {
            Spacer()
            Spacer()
            TextField("Login", text: $login).multilineTextAlignment(.center)
            TextField("Password", text: $password).multilineTextAlignment(.center)
            Spacer()
            Button(action: { self.shouldPopToRootView = false })
            {
                Text("Pop to root")
            }
            Spacer()
        }
    }
}
