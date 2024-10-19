//
//  ContentView.swift
//  table-view
//
//  Created by Anny Caroliny on 08/10/24.
//

import SwiftUI

struct TableView: View {
    @ObservedObject var viewModel = TableViewModel()
    var items: [String: Any] = [:]
    
    // init() garante que self já vai estar disponivel assim que a classe iniciar
    init() {
        self.viewModel = TableViewModel()
        self.items = viewModel.results
        print(items)
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            
            HStack() {
                Text("Menu icon")
                Text("Logo")
                Text("Search")
            }.padding(.top, 10)
            
            
            VStack() {
                ForEach(Array(items.keys), id: \.self) { item in
                    if items[item] is [String: Any] {
                        Section(header: Text(item).font(.title)) {
                            VStack() {
                                if let currencies = items[item] as? [String: Any] {
                                    ForEach(Array(currencies.keys), id: \.self) { currencie in
                                        Text(currencie).font(.headline)
                                    }
                                }
                            }
                        }
                    }
                }
            }.padding(.top, 100)
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .top
        ).background(Color(hex: 0x202526 )) // 0x == #
    }
}

#Preview {
    TableView()
}
