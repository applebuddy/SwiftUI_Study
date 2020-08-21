
// MARK: - Overlay
// - ZStack 대신 overlay로 레이아웃 배치하기
// - ZStack vs overlay
// 1) .overlay/.background : 보통 수식 대상이 되는 뷰와 직접적 연관성이 있는 뷰를 추가할 때 사용한다. 전체화면의 레이아웃 구성보다 UI의 각 부분을 구성하는 개별적 뷰 객체들을 꾸밀 때 활용한다.
// 2) ZStack : 상대적으로 직접적 연관성이 없는 뷰들을 계층 구조로 나열해서 UI를 구성해야 할 때 사용한다. 특정 콘텐츠의 변경 사항이 다른 뷰에까지 함께 영향을 줄 수 있음을 유의해야 한다.

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        // MARK: JoyStick 레이아웃 그리기
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
