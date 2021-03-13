//
//  Notes.swift
//  ios
//
//  Created by Cicero Hellmann on 3/13/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct Notes: View {
    var body: some View {
        List {
            NoteRow(note: Note(id: 0, name: "Jarb"))
            NoteRow(note: Note(id: 0, name: "Lard"))
        }
    }
}
