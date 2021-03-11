//
//  PactientRow.swift
//  ios
//
//  Created by Cicero Hellmann on 3/11/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import Foundation
import SwiftUI

struct PacientRow: View {
    var pacient: Pacient

    var body: some View {
        HStack {
            Text(pacient.name)
            Spacer()
        }
    }
}

struct PacientRowPreviews: PreviewProvider {
    static var previews: some View {
        List {
            PacientRow(pacient: Pacient(id: 0, name: "Jarb"))
            PacientRow(pacient: Pacient(id: 0, name: "Lard"))
        }
    }
}
