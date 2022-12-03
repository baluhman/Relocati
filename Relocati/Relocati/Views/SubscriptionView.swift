//
//  SubscriptionView.swift
//  Relocati
//
//  Created by Oleg Krasnov on 03/12/2022.
//

import SwiftUI

struct SubscriptionView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color(hex: "8D8D8D"))
                .padding([.bottom], 20)
            
            VStack(spacing: 124) {
                Text("подписка")
                    .font(
                        Font.grotesk(size: 38)
                        .weight(.bold)
                    )
                
                Text("pro")
                    .font(Font.grotesk(size: 14))
                    .frame(width: 55, height: 25)
                    .padding(
                        EdgeInsets(top: 7, leading: 16, bottom: 5, trailing: 16)
                    )
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(19)
            }
            .padding([.top, .bottom], 30)
        }
    }
}

struct SubscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionView()
    }
}
