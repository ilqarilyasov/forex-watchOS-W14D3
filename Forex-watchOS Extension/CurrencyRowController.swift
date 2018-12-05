//
//  CurrencyRowController.swift
//  Forex-watchOS Extension
//
//  Created by Ilgar Ilyasov on 12/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import WatchKit

class CurrencyRowController: NSObject {
    
    var symbol: String? {
        didSet {
            currencyLabel.setText(symbol)
        }
    }
    
    @IBOutlet weak var currencyLabel: WKInterfaceLabel!
}
