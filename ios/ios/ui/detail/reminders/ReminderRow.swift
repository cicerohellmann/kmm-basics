//
//  ReminderRow.swift
//  ios
//
//  Created by Cicero Hellmann on 3/13/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct ReminderRow: View {
    var reminder: Reminder
    
    var body: some View {
        HStack {
            Text(reminder.name)
            Spacer()
        }
    }
}
