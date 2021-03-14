//
//  ReminderComposer.swift
//  ios
//
//  Created by Cicero Hellmann on 3/13/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct ReminderComposer: View {
    @State private var title: String = ""
    @State private var message: String = ""
    
    
    @State private var date = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2021, month: 1, day: 1)
        let endComponents = DateComponents(year: 2021, month: 12, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
            ...
            calendar.date(from:endComponents)!
    }()
    
    var body: some View {
        VStack(alignment: .center
        ) {
            TextField("Login", text: $title).multilineTextAlignment(.center)
            TextField("Password", text: $message).multilineTextAlignment(.center)
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
            DatePicker(
                "Start Date",
                 selection: $date,
                 in: dateRange,
                 displayedComponents: [.date, .hourAndMinute]
            )
            DatePicker(
                "End Date",
                 selection: $date,
                 in: dateRange,
                 displayedComponents: [.date, .hourAndMinute]
            )
        }.padding()
    }
}
