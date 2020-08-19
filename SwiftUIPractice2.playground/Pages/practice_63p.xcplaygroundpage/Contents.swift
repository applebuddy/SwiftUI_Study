
import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        Text("Hello SwiftUI!!")
            .font(.title) // -> Text
            .bold() // -> Text
            .padding() // -> View
        /*
        Text("Hello SwiftUI!! (2)")
            .bold() // -> Text
            .padding() // -> View
            .font(.title) // -> View 프로토콜에서 font 사용불가
        
        Text("Hello SwiftUI!! (3)")
            .padding() // -> View
            .bold() // View 프로토콜에서 bold 사용불가
            .font(.title)
        
        Text("Hello SwiftUI!! (4)")
            .padding() // -> View
            .font(.title) // -> View
            .bold() // View 프로토콜에서 bold 수식어 사용불가
        */
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
