//
//  TableModel.swift
//  table-view
//
//  Created by Anny Caroliny on 08/10/24.
//

import Foundation

// MARK: Model

struct TableModel {
    let data_results: [String: [String: Any]] = [
        "currencies": [
            "source": "BRL",
            "USD": [
                "name": "Dollar",
                "buy": 5.5907,
                "sell": 5.5907,
                "variation": 0.981
            ],
            "EUR": [
                "name": "Euro",
                "buy": 6.1173,
                "sell": 6.1162,
                "variation": 0.635
            ],
            "GBP": [
                "name": "Pound Sterling",
                "buy": 7.3098,
                "sell": nil,
                "variation": 0.748
            ],
            "ARS": [
                "name": "Argentine Peso",
                "buy": 0.0057,
                "sell": nil,
                "variation": 0.624
            ],
            "CAD": [
                "name": "Canadian Dollar",
                "buy": 4.0808,
                "sell": nil,
                "variation": 0.598
            ]
        ]
    ]
}
