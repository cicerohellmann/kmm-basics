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
    var body: some View {
        Color.red
            .frame(height: 200)
            .edgesIgnoringSafeArea([.top])
        
        CircleImage(radius: 100)
            .offset(y: -230)
            .padding(.bottom, -230)
        
        
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
        }.navigationBarItems(trailing:
                                Button(action: {
                                    print("Edit button pressed...")
                                }) {
                                    Text("+")
                                }
        )
        .navigationBarHidden(true)
    }
}

struct DetailPreviews: PreviewProvider {
    static var previews: some View {
        Detail(pacient: Pacient(id: 0, name: "test"))
    }
}
