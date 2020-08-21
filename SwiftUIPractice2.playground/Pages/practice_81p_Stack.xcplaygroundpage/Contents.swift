
// MARK: - STACK
// - Stack는 UIKit의 UIStackView와 유사한 역할이나, SwiftUI에서는 보다 비중있는 역할을 차지합니다.
// - Stack의 타입으로는 HStack, VStack, ZStack이 존재합니다.
// - Stack은 컨테이너 뷰로, 하위에 여러개의 View를 가질 수 있습니다.

// MARK: HStack
// - HStack의 생성자는 alignment, spacing, content 세가지 인자를 받을 수 있습니다.
// - parameter
//   - spacing : 서브뷰 간격
/*
// - 생성자 사용 예시
init(alignment: VerticalAlignment = .center, ...) // HStack
init(alignment: HorizontalAlignment = .center, ...) // VStack
init(alignment: Alignment = .center, ...) // ZStack
*/

import PlaygroundSupport
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // - Horizontal Stack
        HStack(alignment: .center) {
            Rectangle()
                .fill(Color.green)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 150, height: 150)
            
            // - Depth Stack
            ZStack {
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 150, height: 150)
                    .offset(x: -20, y: 20) // 각각 x축과 y축으로 40포인트 이동 합니다.(ZStack의 특징 확인 용 설정)
            }
        }
        
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
