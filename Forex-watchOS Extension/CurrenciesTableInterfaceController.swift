//
//  CurrenciesTableInterfaceController.swift
//  Forex-watchOS Extension
//
//  Created by Ilgar Ilyasov on 12/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import WatchKit
import Foundation


class CurrenciesTableInterfaceController: WKInterfaceController {
    
    @IBOutlet weak var currencyTable: WKInterfaceTable!
    
    private let symbols = ["AZN", "CAD", "BRL", "HUF", "DKK", "JPY", "ILS", "TRY",
                           "RON", "GBP", "PHP", "HRK", "NOK", "USD", "MXN", "AUD",
                           "IDR", "KRW", "HKD", "ZAR", "ISK", "CZK", "THB", "MYR",
                           "NZD", "PLN", "SEK", "RUB", "CNY", "SGD", "CHF", "INR"].sorted()

    override func awake(withContext context: Any?) { //viewDidLoad
        super.awake(withContext: context)
        
        currencyTable.setNumberOfRows(symbols.count, withRowType: "CurrencyRow")
        
        for (index, symbol) in symbols.enumerated() {
            let rowController = currencyTable.rowController(at: index) as! CurrencyRowController
            rowController.symbol = symbol
        }
        
    }
}
