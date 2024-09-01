//
//  Button.swift
//  first
//
//  Created by 櫻井絵理香 on 2024/09/01.
//

import SwiftUI

struct ButtonView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    var body: some View {
        NavigationStack {
            Form {
                Picker("Select your student", selection: $selectedStudent ) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}


#Preview {
    ButtonView()
}
