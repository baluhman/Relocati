//
//  PollView.swift
//  Relocati
//
//  Created by Ilya Gruzdev on 03.12.2022.
//

import SwiftUI

struct PollView: View {
    @State var text = ""
    
    let didTap: () -> Void
    
    let blackColor = Color(hex: "#1E1E1E")
    let whiteColor = Color(hex: "#FFFFFF")
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack(alignment: .leading) {
                Text("2/8")
                    .font(.inter(size: 14))
                    .foregroundColor(blackColor)
                
                Spacer()
                    .frame(height: 9)
                
                Text("Укажи свой\nсреднемесячный\nдоход")
                    .foregroundColor(blackColor)
                    .font(.grotesk(size: 28))
                
                Spacer()
                    .frame(height: 72)
                
                HStack {
                    VStack {
                        TextField("150 000", text: $text)
                            .foregroundColor(blackColor)
                        Divider()
                            .background(blackColor)
                    }
                    
                    Spacer()
                        .frame(width: 14)
                    
                    HStack {
                        Text("₽")
                            .foregroundColor(whiteColor)
                        
                        Spacer()
                            .frame(width: 24)
                        
                        Image("arrowDown")
                        
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 19)
                    .background(.black)
                    .cornerRadius(40)
                }
                
                Spacer()
                    .frame(height: 24)
                
                Text("Это поможет нам понять, в каких городах\nтебе будет комфортнее всего финансово")
                    .font(.inter(size: 14))
                    .foregroundColor(blackColor)
            }
            .padding(.horizontal, 24)
            
            Spacer()
            NavigationLink(
                destination: CountryMatchView(didTap: { })
                    .navigationBarBackButtonHidden(true)
            ) {
                HStack {
                    Spacer()
                    Text("Далее")
                        .font(.inter(size: 20))
                        .foregroundColor(whiteColor)
                    Spacer()
                }
                .padding(.vertical, 28)
                .background(blackColor)
                .cornerRadius(40)
                
                .padding(.horizontal, 16)
                .padding(.bottom, 29)
            }
        }
    }
}

struct PollView_Previews: PreviewProvider {
    static var previews: some View {
        PollView(didTap: { })
    }
}
