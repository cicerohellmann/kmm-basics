//
//  Profile.swift
//  ios
//
//  Created by Cicero Hellmann on 3/11/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack(alignment: .center) {
            GeometryReader { geo in
                Color.purple.position(x: geo.size.width * 0.5, y: geo.size.height * 0.3)
            }
            Spacer()
            CircleImage()
                .offset(y: -200)
                .padding(.bottom, -130)
            
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
        Profile()
            .previewDevice("iPhone 8")
    }
}
