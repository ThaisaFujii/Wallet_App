//
//  HeaderView.swift
//  Wallet_app
//
//  Created by Thaisa Fujii on 7/6/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image("Setting")
                .modifier(ToolBarStyle())
            Spacer()
            Text("Home")
            Spacer()
            Image("Notification")
                .modifier(ToolBarStyle())
        }
        .navigationBarHidden(true)
        .font(Font.custom("Gilroy-Bold", size: 16))
        .foregroundColor(Color("DarkestGray"))
        .padding(40)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
