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
        Button(action: {
            print("Hello, SwiftUI-!!")
        }) {
            Text("SwiftUI")
                .font(.title)
                .foregroundColor(.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
