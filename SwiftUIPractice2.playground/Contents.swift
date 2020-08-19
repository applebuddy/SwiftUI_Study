
import PlaygroundSupport
import SwiftUI

struct ContentView_61p: View {
    var body: some View {
        Text("SwiftUI!!")
            .font(.title) // Text 반환
            .bold() // Text 반환
            .padding() // View 반환
        /*
         Text("SwiftUI!!(2)")
             .bold() // Text 반환
             .padding() // View 반환
             .font(.title) // 동일한 font 수식어도 호출자에 따라 반환 타입이 다를 수 있습니다.
         */

        /*
         Text("SwiftUI!!(3)")
             .padding() // View 반환
             .bold() // View 프로토콜은 bold 수식어 사용 불가
             .font(.title) //
         */

        /*
         Text("SwiftUI!!(4)")
             .padding() // View 반환
             .font(.title) // View 반환
             .bold() // View 프로토콜은 bold() 수식어 사용 불가
         */
    }
}

// iOS13 버전 부터는 PlaygroundPage.current.setLiveView(ContentView())를 사용할 수도 있습니다.
PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
