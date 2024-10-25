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
    @State var cardColor: Int = 0x009688
    var items: [String: Any] = [:]
    @State private var currentIndex: Int = 0
    private let cardWidth: CGFloat = 250
    private let spacing: CGFloat = 20
    
    init() {
        self.viewModel = TableViewModel()
        self.items = viewModel.results
    }
    
    var body: some View {
        
        GeometryReader { geometry in
            let width = geometry.size.width

            
            ZStack(alignment: .top) {
                
                VStack {
                    let itemsKeys = Array(items.keys)
                    
                    HeaderView()
                    
                    ForEach(itemsKeys, id: \.self) { item in
                        let results = items[item] as? [String:Any] ?? [:]
                        let stocks = getStocks(from: results)
                        
                        let stocksArr = Array(stocks.keys)
                        let totalSpacing = CGFloat(stocksArr.count - 1) * spacing
                        let contentWidth = CGFloat(stocksArr.count) * cardWidth + totalSpacing
                        
                        ScrollView(.horizontal, showsIndicators: true) {
                            HStack() {
                                ForEach(stocksArr, id: \.self) { name in
                                    let stockName: String = name
                                    let eachStock = stocks["\(name)"] as? [String: Any] ?? [:]
                                    let stockPoints = eachStock["points"] as? Double ?? 0.0
                                    let stockVariation = eachStock["variation"] as? Double ?? 0.0
                                    
                                    BalanceView(
                                        stock: .constant(stockName),
                                        points: .constant(stockPoints),
                                        variation: .constant(stockVariation),
                                        cardColor: $cardColor)
                                }
                            }.frame(maxWidth: .infinity, alignment: .leading)
                        }.frame(width: width, alignment: .leading)
                    }
                            
                    // rates component
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
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .top
                ).background(Color(hex: 0xF7F7FA ))
            }
        }
    }
}

#Preview {
    TableView()
}
