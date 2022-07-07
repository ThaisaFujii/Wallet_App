//
//  ActivitiesView.swift
//  Wallet_app
//
//  Created by Thaisa Fujii on 7/4/22.
//

import SwiftUI

struct ActivitiesView: View {
    var activitiesItem: [ActivitiesList] = [ActivitiesList( image: Image("Netflix"), name: "Netflix Membership", date: "15.02.2022", cost: "- ₺ 29.90"), ActivitiesList(image: Image("Vector"), name: "Turkcell Invoice", date: "15.02.2022", cost: "- ₺ 65.00")]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Recent Activities")
                .font(Font.custom("Gilroy-Bold", size: 14))
                .foregroundColor(Color("DarkestGray"))
                .padding(.top, 49)
                .padding(.leading, 40)
            ForEach(activitiesItem) { activity in
                HStack {
                    Text(activity.image)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .modifier(RecentActivitiesStyle())
                    VStack(alignment: .leading) {
                        Text(activity.name)
                            .padding(.top, 22)
                            .padding(.leading, 16)
                            .padding(.bottom, 2)
                          //  .padding(.trailing, 51)
                            .font(Font.custom("Gilroy-SemiBold", size: 14))
                            .foregroundColor(Color("DarkestGray"))
                        Text(activity.date ?? "N/A")
                            .foregroundColor(Color("LightGray"))
                            .font(Font.custom("Gilroy-ExtraBold", size: 14))
                            .padding(.leading, 16)
                            .padding(.bottom, 36)
                    }
                    HStack {
                        Spacer()
                        Text(activity.cost ?? "N/A")
                            .font(Font.custom("Gilroy-SemiBold", size: 14))
                            .foregroundColor(Color("DarkestGray"))
                            .padding(.top, 34)
                            .padding(.bottom, 56)
                            .padding(.trailing, 38)
                    }
                }
            }
        }
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
