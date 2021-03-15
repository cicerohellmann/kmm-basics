//
//  PactientRow.swift
//  ios
//
//  Created by Cicero Hellmann on 3/11/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct PacientRow: View {
    var pacient: Pacient

    var body: some View {
        NavigationLink(destination: Detail(pacient: pacient)) {
            HStack {
                CircleImage(radius: 25)
                VStack(alignment: .leading, spacing: nil, content: {
                    Text(pacient.name).font(.body).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text(pacient.note).font(.subheadline).fontWeight(.light)
                })
            }
        }
    }
}

struct PacientRowPreviews: PreviewProvider {
    static var previews: some View {
        List {
            PacientRow(pacient: Pacient(id: 0, name: "Jarb", note: "Something should be here"))
            PacientRow(pacient: Pacient(id: 0, name: "Lard", note: "Something should be here"))
        }
    }
}
