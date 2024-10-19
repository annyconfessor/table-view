//
//  TableModel.swift
//  table-view
//
//  Created by Anny Caroliny on 18/10/24.
//

import SwiftUI

let jsonData = """
    {
        "by": "default",
        "valid_key": true,
        "results": {
            "currencies": {
                "source": "BRL",
                "USD": {
                    "name": "Dollar",
                    "buy": 5.5965,
                    "sell": 5.5965,
                    "variation": 0.036
                },
                "EUR": {
                    "name": "Euro",
                    "buy": 6.105,
                    "sell": 6.1061,
                    "variation": 0.045
                },
                "GBP": {
                    "name": "Pound Sterling",
                    "buy": 7.3112,
                    "sell": null,
                    "variation": 0.091
                },
                "ARS": {
                    "name": "Argentine Peso",
                    "buy": 0.0057,
                    "sell": null,
                    "variation": 0.193
                },
                "CAD": {
                    "name": "Canadian Dollar",
                    "buy": 4.055,
                    "sell": null,
                    "variation": -0.039
                },
                "AUD": {
                    "name": "Australian Dollar",
                    "buy": 3.7639,
                    "sell": null,
                    "variation": 0.058
                },
                "JPY": {
                    "name": "Japanese Yen",
                    "buy": 0.0374,
                    "sell": null,
                    "variation": 0.204
                },
                "CNY": {
                    "name": "Renminbi",
                    "buy": 0.7896,
                    "sell": null,
                    "variation": 0.036
                },
                "BTC": {
                    "name": "Bitcoin",
                    "buy": 388421.196,
                    "sell": 388421.196,
                    "variation": -0.491
                }
            },
            "stocks": {
                "IBOVESPA": {
                    "name": "BM&F BOVESPA",
                    "location": "Sao Paulo, Brazil",
                    "points": 131005.25,
                    "variation": 0.78
                },
                "IFIX": {
                    "name": "Índice de Fundos de Investimentos Imobiliários B3",
                    "location": "Sao Paulo, Brazil",
                    "points": 3228.39,
                    "variation": 0.36
                },
                "NASDAQ": {
                    "name": "NASDAQ Stock Market",
                    "location": "New York City, United States",
                    "points": 18502.69,
                    "variation": 0.87
                },
                "DOWJONES": {
                    "name": "Dow Jones Industrial Average",
                    "location": "New York City, United States",
                    "points": 43065.22,
                    "variation": 0.47
                },
                "CAC": {
                    "name": "CAC 40",
                    "location": "Paris, French",
                    "points": 7602.06,
                    "variation": 0.32
                },
                "NIKKEI": {
                    "name": "Nikkei 225",
                    "location": "Tokyo, Japan",
                    "points": 39605.8,
                    "variation": 0.57
                }
            },
            "available_sources": [
                "BRL"
            ],
            "bitcoin": {
                "blockchain_info": {
                    "name": "Blockchain.info",
                    "format": [
                        "USD",
                        "en_US"
                    ],
                    "last": 65475.76,
                    "buy": 65475.76,
                    "sell": 65475.76,
                    "variation": -0.491
                },
                "coinbase": {
                    "name": "Coinbase",
                    "format": [
                        "USD",
                        "en_US"
                    ],
                    "last": 56019.33,
                    "variation": 2.506
                },
                "bitstamp": {
                    "name": "BitStamp",
                    "format": [
                        "USD",
                        "en_US"
                    ],
                    "last": 65558,
                    "buy": 65568,
                    "sell": 65566,
                    "variation": -0.359
                },
                "foxbit": {
                    "name": "FoxBit",
                    "format": [
                        "BRL",
                        "pt_BR"
                    ],
                    "last": 367200,
                    "variation": -0.496
                },
                "mercadobitcoin": {
                    "name": "Mercado Bitcoin",
                    "format": [
                        "BRL",
                        "pt_BR"
                    ],
                    "last": 367083.21,
                    "buy": 367134.7442072,
                    "sell": 367323.61233272,
                    "variation": -0.57
                }
            },
            "taxes": [
                {
                    "date": "2024-10-11",
                    "cdi": 10.75,
                    "selic": 10.75,
                    "daily_factor": 1.00040168,
                    "selic_daily": 10.65,
                    "cdi_daily": 10.65
                }
            ]
        },
        "execution_time": 0,
        "from_cache": true
    }
    """.data(using: .utf8)!

func serialization() -> [String: Any] {
    func res() -> [String: Any] {
        do {
            var data: [String: Any] = [:]
            if let jsonDict = try JSONSerialization.jsonObject(with: jsonData, options: []) as? [String: Any] {
                print("Dic: \(jsonDict)")
                data = jsonDict
            }
            return data
        } catch {
            print("Error ao converter JSON: \(error)")
            return ["error": error.localizedDescription]
        }
    }
    
    return res()
}
