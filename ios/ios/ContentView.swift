import SwiftUI
import common

func greet() -> String {
    return Greeting().greeting()
}

struct ContentView: View {
    @State private var login: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center
            ) {
                Spacer()
                Spacer()
                TextField("Login", text: $login).multilineTextAlignment(.center)
                TextField("Password", text: $password).multilineTextAlignment(.center)
                Spacer()
                Button(action: {
                }) {
                    NavigationLink(destination: DestinyView()) {
                        Text("Login")
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DestinyView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center
            ) {
                Text("NavigationTest")
            }
        }.navigationBarHidden(true)
    }
}
