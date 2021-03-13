//
//  NoteRow.swift
//  ios
//
//  Created by Cicero Hellmann on 3/13/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct NoteRow: View {
    var note: Note
    
    var body: some View {
        HStack {
            Text(note.name)
            Spacer()
        }
    }
}
