//
//  Button.swift
//  first
//
//  Created by 櫻井絵理香 on 2024/09/01.
//

import SwiftUI

struct ButtonView: View {
    @State private var count: Int = 0
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.title2)
            Button {
             count += 1
            }label: {
                Text("増えるよ")
            }
        }
    }
}


#Preview {
    ButtonView()
}
