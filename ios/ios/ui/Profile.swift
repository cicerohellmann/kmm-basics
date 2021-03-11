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
            Color.purple
                .overlay(
                    VStack(alignment: .center) {
                        Spacer()
                    }).offset(y: -100).frame(width: nil, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
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
    }
}
