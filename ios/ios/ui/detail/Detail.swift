//
//  Detail.swift
//  ios
//
//  Created by Cicero Hellmann on 3/13/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct Detail: View {
    var pacient : Pacient
    @State private var showingChildView = false
    var body: some View {
        VStack(alignment: .center, spacing: nil, content: {
            Color.gray
                .frame(height: 200)
                .edgesIgnoringSafeArea([.top])
            
            CircleImage(radius: 100)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            TabView {
                Notes()
                    .tabItem {
                        Image(systemName: "circle")
                        Text("Notes")
                    }
                
                Reminders()
                    .tabItem {
                        Image(systemName: "circle")
                        Text("Reminders")
                    }
            }.navigationBarItems(
                trailing: Button(action:{
                    self.showingChildView = true
                }) { Text("+") }
            )
        
                NavigationLink(destination: ReminderComposer(),
                               isActive: self.$showingChildView)
                { EmptyView() }
        })
    }
}

struct DetailPreviews: PreviewProvider {
    static var previews: some View {
        Detail(pacient: Pacient(id: 0, name: "test"))
    }
}
