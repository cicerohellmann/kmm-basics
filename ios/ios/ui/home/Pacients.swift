//
//  Pacients.swift
//  ios
//
//  Created by Cicero Hellmann on 3/10/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct Pacients: View {
    var body: some View {
        List {
            PacientRow(pacient: Pacient(id: 0, name: "Jarb", note: "Something should be here"))
            PacientRow(pacient: Pacient(id: 0, name: "Lard", note: "Something should be here"))
        }.padding(.top).padding(.leading).padding(.trailing)
    }
}

struct PacientsPreviews: PreviewProvider {
    static var previews: some View {
        Pacients()
    }
}
