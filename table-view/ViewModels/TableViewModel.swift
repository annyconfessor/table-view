//
//  TableViewModel.swift
//  table-view
//
//  Created by Anny Caroliny on 08/10/24.
//

import SwiftUI

// MARK: View Model

class TableViewModel: ObservableObject {
    @Published var importModel = TableModel()
    var results: [String: Any] = [:]
    
    // MARK: Intent to get names from model
    
    init() {
        self.importModel = TableModel()
        self.results = importModel.fetchData
    }
    
    // MARK: Intent do print names
    
    func printing(item: Array<String>) -> [()] {
        let printItems: [()] = item.map {
            print("name: \($0)")
        }
        return printItems
    }
}
