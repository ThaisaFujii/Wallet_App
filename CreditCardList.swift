//
//  CreditCard.swift
//  Wallet_app
//
//  Created by Thaisa Fujii on 7/4/22.
//

import Foundation
import SwiftUI

struct CreditCard: Identifiable {
    var id = UUID()
    var identification: String
    var totalBalance: String
    var creditCardNumber: String
    var color: Color
}


