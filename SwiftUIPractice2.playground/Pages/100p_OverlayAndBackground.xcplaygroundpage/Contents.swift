
import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        // - overlay 사용 예시
        Circle()
            .fill(Color.yellow.opacity(0.8))
            .frame(width: 250, height: 250)
            .overlay(Text("JoyStick").font(.largeTitle))
            .overlay(Image(systemName: "arrow.up").font(.title).padding(),
                     alignment: .top)
            .overlay(Image(systemName: "arrow.left").font(.title).padding(),
                     alignment: .leading)
            .overlay(Image(systemName: "arrow.right").font(.title).padding(),
                     alignment: .trailing)
            .overlay(Image(systemName: "arrow.down").font(.title).padding(),
                     alignment: .bottom)
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
