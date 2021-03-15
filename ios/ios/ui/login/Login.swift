//
//  RootView.swift
//  ios
//
//  Created by Cicero Hellmann on 3/10/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import SwiftUI
import common

struct Login: View {
    @Binding var user : User
    @State private var login: String = ""
    @State private var password: String = ""
    let saveAction: () -> Void
    var body: some View {
        VStack(alignment: .center
        ) {
            Spacer()
            Spacer()
            TextField("Login", text: $login).multilineTextAlignment(.center)
            Divider().padding(.trailing).padding(.leading)
            TextField("Password", text: $password).multilineTextAlignment(.center)
            Divider().padding(.leading)
            
            HStack(
            ) {
                Spacer()
                Button(action: {
                })
                {
                    Text("Forgot password?").font(.footnote).foregroundColor(Color("BlueLightDarker"))
                }
            }.padding()
            
            Spacer()
            Button(action: {
            })
            {
                Text("Don’t have an account? Create now").font(.footnote).foregroundColor(Color("BlueLightDarker"))
            }
            ButtonGradient(title: "Login",action: {
                self.user.isLogged = true
                self.saveAction()

            }).padding()
        }
    }
}

func login(login: String, password: String){
        let login = common.LoginModel(email: login, password: password, userType: String(describing:UserType.professional))

        if(login.isNotNullOrEmpty()){
            common.PostLoginKt.postLoginIOS(login: login, completionHandler: {
                login, error in
                if(login != ""){
                    if let token = login {
                        self.auth(token: token)
                    } else {
                        print("Failed to login")
                    }
                }
            })
        }
}

func auth(token: String){
        common.GetMeKt.getMeIOS(token: token, completionHandler: {
            me, error in
            if(me != nil){
                if let object = me {
                    if let professionalCode = object.details?.professionalCode{
                        common.GetCustomersKt.getCustomersIOS(token: token, professionalCode: professionalCode, completionHandler: {
                            customerList, error in
                            if let list = customerList {
                                print(String(describing: list) + " CustomerList")
                            }else{
                                print(error?.localizedDescription ?? "error")
                            }
                        })

                    }

                } else {
                    print("failed to authenticate")
                }
            }
        })
}

struct PreviewLogin: View{
    @State private var user = User(id: UUID(), isLogged: false)
    var body: some View {
        Login(user: $user, saveAction: {})
    }
}
#if DEBUG
struct LoginPreviews: PreviewProvider {
    static var previews: some View {
        PreviewLogin()
    }
}
#endif
