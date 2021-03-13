//
//  Profile.swift
//  ios
//
//  Created by Cicero Hellmann on 3/11/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct Profile: View {
    @EnvironmentObject var user: UserData
    
    let saveAction: () -> Void
    var body: some View {
        VStack(alignment: .center) {
            GeometryReader { geo in
                Color.purple.position(x: geo.size.width * 0.5, y: geo.size.height * 0.3)
            }
            Spacer()
            CircleImage(radius: 100)
                .offset(y: -200)
                .padding(.bottom, -130)
            
            Button(action: {
                self.user.user.isLogged = false
                self.saveAction()
            }) {
                Text("Logout")
            }

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California") 
                        .font(.subheadline)
                }
            }.padding()
            
        }
    }
}

struct ProfilePreviews: PreviewProvider {
    static var previews: some View {
        Profile(saveAction: {})
            .previewDevice("iPhone 8")
    }
}
