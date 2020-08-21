
// MARK: - Spacer
// - Spacer는 뷰 사이의 간격을 설정하거나 뷰의 크기를 확장할 용도로 사용되는 레이아웃 요소입니다.
// - Spacer는 Stack 내에서 별도의 배경색상 등을 갖지 못합니다.
// - Spacer는 Stack 외에서는 배경색상을 적용할 수 있습니다.

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        // 90p)
        /*
        HStack(spacing: 0) {
            Text("Spacer MinLength")
                .font(.title)
                .foregroundColor(.white)
                .background(Color.black)
            Spacer(minLength: 100)
            Text("Spacer")
                .font(.title)
                .background(Color.yellow)
        }.background(Color.blue)
        */
        
        // 92p)
        // - ZStack에서 Spacer는 다른 형제 뷰의 최대 크기만큼만 확장됩니다.
        // - ZStack에서는 Color.clear나 Rectangle과 같이 부모 뷰의 크기만큼 커지려는 확장성을 가진 뷰를 Spacer대신 사용 가능합니다.
        /*
        ZStack {
            Color.clear
            Text("Spacer")
                .font(.title)
                .background(Color.yellow)
        }.background(Color.blue)
        */
        
        // 93p
        // - Spacer를 사용한 레이아웃 배치 예시
        // - Spacer를 사용해서 내부 뷰 레이아웃을 조절할 수 있다.
        VStack {
            Text("제목").font(.largeTitle)
            Text("부제목").foregroundColor(Color.gray)
            Spacer()
            Text("본문 내용")
            Spacer()
            Spacer()
            Text("각주").font(.body)
        }.font(.title)
            .frame(width: 200, height: 350)
            .padding()
            .border(Color.blue, width: 2)
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ContentView())
