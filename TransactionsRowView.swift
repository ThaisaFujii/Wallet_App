//
//  TransactionsRowView.swift
//  Wallet_app
//
//  Created by Thaisa Fujii on 7/6/22.
//

import SwiftUI

struct TransactionsRowView: View {
//    var transactionsRow: [Transaction] = [Transaction(image: Image("SendMoney"), name: "Send Money"), Transaction(image: Image("Scan"), name: "QA Actions"), Transaction(image: Image("Document"), name: "Pay Bill")]
    var transactionsRow: [ActivitiesList] = [ActivitiesList(image: Image("SendMoney"), name: "Send Money"), ActivitiesList(image: Image("Scan"), name: "QA Actions"), ActivitiesList(image: Image("Document"), name: "Pay Bill")]
    
    var body: some View {
        ForEach(transactionsRow){ transaction in
        VStack {
            Text(transaction.image)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .modifier(TransactionsRowStyle())
            Text(transaction.name)
            .multilineTextAlignment(.center)
            .foregroundColor(Color("DarkestGray"))
            .font(Font.custom("Gilroy-SemiBold", size: 14))
            .padding(.top, 10)
        }
        }
        .padding(.horizontal, 16)
        .padding(.top, 48)
    }
}

struct TransactionsRowView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsRowView()
    }
}
