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
    @State private var stock = "IBOVESPA"
    
    // init() garante que self já vai estar disponivel assim que a classe iniciar
    init() {
        self.viewModel = TableViewModel()
        self.items = viewModel.results
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            
            VStack {
                HeaderView()
                BalanceView(stock: $stock)
                
                // rates componente
                VStack() {
                    ForEach(Array(items.keys), id: \.self) { item in
                        if items[item] is [String: Any] {
                            Section(header: Text(item).font(Font.custom("Poppins-SemiBold", size: 30))) {
                                VStack() {
                                    if let currencies = items[item] as? [String: Any] {
                                        ForEach(Array(currencies.keys), id: \.self) { currencie in
                                            Text(currencie).font(Font.custom("Poppins-Italic", size: 30))
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .top
        ).background(Color(hex: 0xF7F7FA ))
    }
}

#Preview {
    TableView()
}
