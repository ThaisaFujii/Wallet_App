//
//  ContentView.swift
//  Wallet_app
//
//  Created by Thaisa Fujii on 7/4/22.
//
// To Do List
//
// Shadow OK
// Font OK
// Espacamento OK
// Alinhamento das frases OK

import SwiftUI

struct ContentView: View {
    var items: [CreditCard] = [CreditCard(identification: "Balance", totalBalance: "₺ 23,222.02", creditCardNumber: "582 300 1445 3286", color: Color("ThirdColor")), CreditCard(identification: "Balance", totalBalance: "₺ 15,560.00", creditCardNumber: "5282 3000 1445 3286", color: Color("PrimaryColor")), CreditCard(identification: "Balance", totalBalance: "₺ 11,111.11", creditCardNumber: "582 300 3286 1445", color: Color("SecondaryColor"))]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .center) {
                    HeaderView()
                    ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(items) { item in
                            CardView(Item: item)
                                .shadow(color: item.color.opacity(0.3), radius: 12, x: 0, y: 10)
                            }
                        }
                    }
                    .frame(height: 240)
                    HStack {
                        TransactionsRowView()
                        // passar os parametros e fazer uma unica view
                    }
                    ActivitiesView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
