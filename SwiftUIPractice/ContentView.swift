//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by MinKyeongTae on 2020/08/08.
//  Copyright © 2020 MinKyeongTae. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) { // 세로 방향으로 뷰를 배열하는 컨테이너 뷰, VStack
            Text("폰트와 굵기 설정") // 텍스트 설정
                .font(.title) // 폰트 설정
                .fontWeight(.black) // 폰트 굵기 설정

            // 두 개 이상의 텍스트를 하나로 묶어서 표현할 수도 있다.
            (Text("자간과 기준선").kerning(8) // 문자 사이 간격 설정
                + Text(" 조정도 쉽게 가능합니다.").baselineOffset(8)) // 하단 기준선
                .font(.system(size: 16)) // 시스템 폰트 설정
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
 struct ContentView: View {
 var body: some View {
     Button(action: {
         print("Hello, SwiftUI-!!")
     }) {
         Text("SwiftUI~!")
             .font(.title)
             .fontWeight(.medium)
             .foregroundColor(.black)
     }
 }
 }
 */
