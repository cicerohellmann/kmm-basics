//
//  reminders.swift
//  ios
//
//  Created by Cicero Hellmann on 3/13/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct Reminders: View {
    var body: some View {
        List {
            ReminderRow(reminder: Reminder(id: 0, name: "Borb"))
            ReminderRow(reminder: Reminder(id: 0, name: "Dorb"))
            ReminderRow(reminder: Reminder(id: 0, name: "Dorb"))
            ReminderRow(reminder: Reminder(id: 0, name: "Dorb"))
            ReminderRow(reminder: Reminder(id: 0, name: "Dorb"))
            ReminderRow(reminder: Reminder(id: 0, name: "Dorb"))
            ReminderRow(reminder: Reminder(id: 0, name: "Dorb"))
            ReminderRow(reminder: Reminder(id: 0, name: "Borb"))
            ReminderRow(reminder: Reminder(id: 0, name: "Dorb"))
            ReminderRow(reminder: Reminder(id: 0, name: "Borb"))

        }
    }
}

