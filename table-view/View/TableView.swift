//
//  ContentView.swift
//  table-view
//
//  Created by Anny Caroliny on 08/10/24.
//

import SwiftUI

extension Color {
    init(hex: Int, opacity: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: opacity
        )
    }
}

struct TableView: View {
    @ObservedObject var viewModel = TableViewModel()
    var items: [String] = [""]
    
    // init() garante que self já vai estar disponivel assim que a classe iniciar
    init() {
        self.viewModel = TableViewModel()
        self.items = viewModel.names
    }
    
    var body: some View {
        ZStack() {
            VStack(alignment: .leading) {
                ForEach(items, id: \.self) { item in
                    Text(item)
                        .padding(10)
                        .foregroundColor(.white)
                        .font(.title)
                        .fontDesign(.monospaced)
                }
            }
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        ).background(Color(hex: 0x021E25)) // 0x == #
    }
}

#Preview {
    TableView()
}
