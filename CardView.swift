//
//  CardView.swift
//  Wallet_app
//
//  Created by Thaisa Fujii on 7/4/22.
//

import SwiftUI

struct CardView: View {
    
    var Item: CreditCard
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            Text(Item.identification)
                .padding(.top, 24)
                .font(Font.custom("Gilroy-SemiBold", size: 14))
                .foregroundColor(Color("LightPurple"))
            Text(Item.totalBalance)
                .foregroundColor(.white)
                .font(Font.custom("Gilroy-Bold", size: 24))
                .padding(.bottom, 46)
            Text(Item.creditCardNumber)
                .font(Font.custom("Gilroy-SemiBold", size: 16))
                .foregroundColor(Color("LightPurple"))
                .kerning(0.3)
                .padding(.bottom, 28)
        }
        .padding(.leading, 28)
        .padding(.trailing, 116)
        .background(Item.color)
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .frame(maxWidth: .infinity, minHeight: 120)
        .padding(.horizontal, 5)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(Item: CreditCard(identification: "Balance", totalBalance: "₺ 15,560.00", creditCardNumber: "582 300 1445 3286", color: Color("ThirdColor")))
    }
}
