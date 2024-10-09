//
//  ContentView.swift
//  table-view
//
//  Created by Anny Caroliny on 08/10/24.
//

import SwiftUI

struct TableView: View {
    @ObservedObject var viewModel = TableViewModel()
    var items: [String] = [""]
    
    // init() garante que self já vai estar disponivel assim que a classe iniciar
    init() {
        self.viewModel = TableViewModel()
        self.items = viewModel.names
    }
    
    var body: some View {
        HStack {
            Text(items[0])
        }
    }
}

#Preview {
    TableView()
}
