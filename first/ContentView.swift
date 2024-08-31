//
//  ContentView.swift
//  first
//
//  Created by 櫻井絵理香 on 2024/08/31.
//

import SwiftUI

struct ContentView: View {
     @State private var money: Int = 0
    @State private var members: [String] = []
    @State private var addMember: String = ""
    
    
    private func Calculate (members: [String], money: Int) -> Int{
        var memberCount: Int
        var totalMoney: Int
        memberCount = members.count
        if memberCount != 0{
            totalMoney = money/memberCount
        } else {
            totalMoney = 0
        }
        return totalMoney
    }
    var body: some View {
        VStack {
            Form {
                TextField("money", value: $money, format: .number)
            }
            Form {
                TextField("member", text: $addMember)
            }
            Button {
                if addMember != ""{
                    members.append(addMember)
                    addMember = ""
                } else {
                    print("新メンバーを入力して")
                }
            } label: {
                Text("新メンバーを加える")
            }
            
            List {
                ForEach(members, id: \.self) { member in
                    Text(member)
                }
            }
            Text("\(Calculate(members: members, money: money))円で分けてね")
        }
        .padding()
    }
}


