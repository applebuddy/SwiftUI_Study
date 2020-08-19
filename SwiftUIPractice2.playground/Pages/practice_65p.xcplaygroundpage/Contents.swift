
import PlaygroundSupport
import SwiftUI

struct ContentView: View {
    var body: some View {
        // - 수식어(modifier) 적용 순서에 따라 실제 표출되는 화면의 차이가 발생할 수 있습니다.
        /*
         Text("🤔🥈🥉🏅🎖")
             .font(.largeTitle)
             .background(Color.yellow) // background
             .padding() // -> padding 순 적용
         */

        Text("🤔🥈🥉🏅🎖")
            .font(.largeTitle)
            .padding() // padding
            .background(Color.yellow) // -> background 순 적용
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
