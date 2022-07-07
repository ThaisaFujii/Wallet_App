//
//  ActivitiesList.swift
//  Wallet_app
//
//  Created by Thaisa Fujii on 7/4/22.
//

import Foundation
import SwiftUI

struct ActivitiesList: Identifiable {
    var id = UUID()
    var image: Image
    var name: String
    var date: String?
    var cost: String?
}

//struct Transaction: Identifiable {
//    var id = UUID()
//    var image: Image
//    var name: String
//}
