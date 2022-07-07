//
//  QRActionsView.swift
//  Wallet_app
//
//  Created by Thaisa Fujii on 7/4/22.
//

import SwiftUI

struct QRActionsView: View {
    var body: some View {
        VStack {
            Image("Scan")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .modifier(TransactionsRowStyle())
            Text("QA Actions")
            .multilineTextAlignment(.center)
            .foregroundColor(Color("DarkestGray"))
            .font(Font.custom("Gilroy-SemiBold", size: 14))
            .padding(.top, 10)
        }
        .padding(.horizontal, 16)
        .padding(.top, 48)
    }
}

struct QRActionsView_Previews: PreviewProvider {
    static var previews: some View {
        QRActionsView()
    }
}
