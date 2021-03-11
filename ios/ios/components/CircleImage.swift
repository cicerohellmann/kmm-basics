//
//  CircleImage.swift
//  ios
//
//  Created by Cicero Hellmann on 3/11/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("imBaloon")
            .frame(width: 200.0, height:200.0)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 5)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
