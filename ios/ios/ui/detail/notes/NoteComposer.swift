//
//  NoteComposer.swift
//  ios
//
//  Created by Cicero Hellmann on 3/14/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct NoteComposer: View {
    @State private var title: String = ""
    @State private var message: String = ""
    var body: some View {
        VStack(alignment: .center
        ) {
            Spacer()
            Spacer()
            TextField("Title", text: $title).multilineTextAlignment(.center)
            TextField("Message", text: $message).multilineTextAlignment(.center)
            Spacer()
            HStack(alignment: .center, content: {
                Button(action: {
                })
                {
                    Text("Cancel")
                }
                Button(action: {
                })
                {
                    Text("Sumbit")
                }
            })
            Spacer()
        }
    }
}
