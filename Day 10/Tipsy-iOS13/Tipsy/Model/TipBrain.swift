//
//  TipBrain.swift
//  Tipsy
//
//  Created by Favour Olukayode on 29/12/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct TipBrain {
    
    func generateBillPerPerson(tipPercent: Float, totalBill: Float, splitNumber: Int) -> Float {
        let tipBill = totalBill * tipPercent
        let finalBill = totalBill + tipBill
        
        return finalBill / Float(splitNumber)
    }
    
}
