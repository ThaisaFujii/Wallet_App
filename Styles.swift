//
//  Styles.swift
//  Wallet_app
//
//  Created by Thaisa Fujii on 7/5/22.
//

import Foundation
import SwiftUI

struct ToolBarStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Gilroy-Bold", size: 16))
            .padding(16)
            .overlay(
                RoundedRectangle(cornerRadius: 14)
                    .stroke(Color("ThinGray"), lineWidth: 1)
            )
            .frame(width: 50, height: 50)
    }
}

struct TransactionsRowStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(16)
            .background(Color("ThinnestGray"))
            .overlay(
                RoundedRectangle(cornerRadius: 14)
                    .stroke(Color("ThinGray"), lineWidth: 1)
            )
            .frame(width: 60, height: 60)
    }
}

struct RecentActivitiesStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Gilroy-Bold", size: 16))
            .padding(8)
            .overlay(
                RoundedRectangle(cornerRadius: 14)
                    .stroke(Color("ThinGray"), lineWidth: 1)
            )
            .frame(width: 50, height: 50)
            .padding(.leading, 40)
         //   .padding(.trailing, 16)
            .padding(.top, 22)
            .padding(.bottom, 24)
    }
}
