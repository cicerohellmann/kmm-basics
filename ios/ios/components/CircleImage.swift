//
//  CircleImage.swift
//  ios
//
//  Created by Cicero Hellmann on 3/11/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var radius: Int
    var body: some View {
        let diameter = CGFloat(radius)*2
        Image("imBaloon")
            .frame(width: diameter, height: diameter)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 5)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(radius: 100)
    }
}
