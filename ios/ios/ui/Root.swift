//
//  RootView.swift
//  ios
//
//  Created by Cicero Hellmann on 3/10/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI

struct Root: View {
    @State var rootIsActive : Bool = true
    var body: some View {
        NavigationView {
            if(rootIsActive){
                Login(shouldPopToRootView: self.$rootIsActive)
            }else{
                Home()
            }
        }
    }
}

