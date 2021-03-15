//
//  Button.swift
//  ios
//
//  Created by Cicero Hellmann on 3/14/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct ButtonGradient: View {
    var title: String = ""
    let action: () -> Void
    var body: some View {
        Button(action: {
            action()
        }) {
            HStack {
                Text(title)
                    .fontWeight(.semibold)
                    .font(.title)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .foregroundColor(.white)
        .background(LinearGradient(gradient: Gradient(colors: [Color("BlueLightDarker"), Color("BlueLight")]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(12)
    }
}

struct ButtonGradientPreviews: PreviewProvider {
    static var previews: some View {
        ButtonGradient(title: "Test") {}
    }
}
