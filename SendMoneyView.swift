//
//  SendMoneyView.swift
//  Wallet_app
//
//  Created by Thaisa Fujii on 7/4/22.
//

import SwiftUI

struct SendMoneyView: View {
    var body: some View {
        VStack {
            Image("SendMoney")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .modifier(TransactionsRowStyle())
            
            Text("Send Money")
            .multilineTextAlignment(.center)
            .foregroundColor(Color("DarkestGray"))
            .font(Font.custom("Gilroy-SemiBold", size: 14))
            .padding(.top, 10)
        }
        .padding(.horizontal, 16)
    }
}

struct SendMoneyView_Previews: PreviewProvider {
    static var previews: some View {
        SendMoneyView()
    }
}
