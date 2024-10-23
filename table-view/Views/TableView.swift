//
//  ContentView.swift
//  table-view
//
//  Created by Anny Caroliny on 08/10/24.
//

import SwiftUI

func getStocks(from results: [String: Any]) -> [String: Any] {
    return results["stocks"] as? [String:Any] ?? [:]
}

struct TableView: View {
    @ObservedObject var viewModel = TableViewModel()
    var items: [String: Any] = [:]
//    @State private var stockName: String = "IBOVESPA"
    @State private var points: Double = 9292.93
    @State private var variation: Double = 2.00
    @State private var cardColor1: Int = 0x009688
    @State private var cardColor2: Int = 0xff8367
    
    // init() garante que self já vai estar disponivel assim que a classe iniciar
    init() {
        self.viewModel = TableViewModel()
        self.items = viewModel.results
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            
            VStack {
                let itemsKeys = Array(items.keys)
                
                HeaderView()
                
                HStack {
                    ForEach(itemsKeys, id: \.self) { item in
                        let results = items[item] as? [String:Any] ?? [:]
                        let stocks = getStocks(from: results)
                        
                        let stocksArr = Array(stocks.keys)
                        ForEach(stocksArr, id: \.self) { name in
                            @State var stockName: String = name
                            let eachStock = stocks["\(name)"] as? [String: Any] ?? [:]
                            @State var stockPoints = eachStock["points"] as? Double ?? 0.0
                            @State var stockVariation = eachStock["variation"] as? Double ?? 0.0
                            
                            BalanceView(
                                stock: $stockName,
                                points: $stockPoints,
                                variation: $stockVariation,
                                cardColor: $cardColor1)
                        }
                    }
                }
                
                
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
