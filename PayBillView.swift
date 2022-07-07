//
//  PayBillView.swift
//  Wallet_app
//
//  Created by Thaisa Fujii on 7/5/22.
//

import SwiftUI

struct PayBillView: View {
    var body: some View {
        VStack {
            Image("Document")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .modifier(TransactionsRowStyle())
            Text("Pay Bill")
            .multilineTextAlignment(.center)
            .foregroundColor(Color("DarkestGray"))
            .font(Font.custom("Gilroy-SemiBold", size: 14))
            .padding(.top, 10)
        }
        .padding(.horizontal, 16)
        .padding(.top, 48)
    }
}

struct PayBillView_Previews: PreviewProvider {
    static var previews: some View {
        PayBillView()
    }
}
