import cocoapods.AFNetworking.*
import SwiftUI
import common

func greet() -> String {
    return Greeting().greeting()
}

struct ContentView: View {
    var body: some View {
        Text(greet())
        Text(greet())
        Text(greet())
        Text(greet())
        Text(greet())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
