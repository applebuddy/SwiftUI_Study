
// MARK: - MultipleStack
// - UIKit의 UIStackView와 같이 SwiftUI의 Stack도 겹겹으로 사용 가능하다.
// - ZStack / HStack / VStack을 겹겹이 사용 가능하다.

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        // - VStack안에 HStack, ZStack을 사용해서 레이아웃을 배치합니다.
        VStack {
            Text("도형 만들기")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            HStack(alignment: .center) {
                Text("둥근 모양").font(.title)
                Spacer()
            }
            
            ZStack {
                // - 사각형의 높이를 10으로 설정, 선으로 사용합니다.
                Rectangle().frame(height: 10)
                
                // - 검은 선 위로 다양한 도형을 그려줍니다.
                HStack {
                    Circle().fill(Color.yellow) // 원
                    Ellipse().fill(Color.green) // 타원
                    Capsule().fill(Color.blue) // 캡슐
                    RoundedRectangle(cornerRadius: 30).fill(Color.red) // 둥근 모서리 직사각형
                }
            }
            
            HStack {
                Text("각진 모양").font(.title)
                Spacer()
            }
            
            ZStack {
                Rectangle().frame(height: 10) // 배경선
                HStack {
                    // * SwiftUI에서는 Color 자체도 View에 속합니다.
                    Color.red
                    Rectangle().fill(Color.blue) // 사각형
                    RoundedRectangle(cornerRadius: 0).fill(Color.purple) // 모서리 둥글기 지름 0의 직사각형
                }
                
            }
        }.padding()
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
