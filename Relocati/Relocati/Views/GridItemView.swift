//
//  GridItemVIew.swift
//  Relocati
//
//  Created by Oleg Krasnov on 03/12/2022.
//

import SwiftUI

struct GridItemView: View {
    private let color: Color
    private let headerTitle: String
    private let descriptionTitle: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(color)
            
            VStack() {
                HStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 19)
                        .stroke(Color.black, lineWidth: 2)
                        .frame(width: 47, height: 25)

                }
                Spacer()
            }
            .padding([.top, .trailing, .leading], 20)
            
            VStack(alignment: .leading) {
                Text(headerTitle)
                    .font(
                        .system(size: 38)
                        .weight(.bold)
                    )
                
                Text(descriptionTitle)
            }
        }
    }
    
    init(color: Color, headerTitle: String, descriptionTitle: String) {
        self.color = color
        self.headerTitle = headerTitle
        self.descriptionTitle = descriptionTitle
    }
}

struct GridItemVIew_Previews: PreviewProvider {
    static var previews: some View {
        GridItemView(
            color: .purple,
            headerTitle: "язык",
            descriptionTitle: "Важные фразы для знакомства со страной"
        )
    }
}
