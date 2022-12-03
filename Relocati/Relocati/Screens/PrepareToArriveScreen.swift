//
//  PrepareToArriveScreen.swift
//  Relocati
//
//  Created by Oleg Krasnov on 03/12/2022.
//

import SwiftUI

struct PrepareToArriveView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "1E1E1E")
                    .ignoresSafeArea()
                
                VStack(alignment: .leading, spacing: 30) {
                    HStack(alignment: .center) {
                        Image("Ellipse 10")
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 3) {
                            Text("Александр")
                                .font(Font.inter(size: 14))
                                .foregroundColor(.white)
                                .padding(3)
                            Text("82 дня до переезда")
                                .font(Font.inter(size: 14))
                                .foregroundColor(.white)
                                .opacity(0.6)
                        }
                        Spacer()
                        
                        VStack(spacing: 5) {
                            Text("buddy pro")
                                .font(Font.grotesk(size: 14).weight(.bold))
                                .frame(width: 82, height: 25)
                                .background(.purple)
                                .cornerRadius(19)
                            
                            Text("Подписаться")
                                .font(Font.inter(size: 10))
                                .foregroundColor(.white)
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        Text("cтамбул, турция")
                            .font(Font.grotesk(size: 23).weight(.bold))
                            .foregroundColor(.white)
                        
                        ProgressBar()
                            .frame(height: 13)
                        
                        HStack {
                            Text("Уровень 1")
                                .font(Font.inter(size: 14))
                            .foregroundColor(.white.opacity(0.6))
                            
                            Circle()
                                .frame(width: 4, height: 4)
                                .foregroundColor(.pink)
                            
                            Text("На чемоданах")
                                .font(Font.inter(size: 14))
                                .foregroundColor(.white)
                        }
                        
                    }
                    
                    VStack(spacing: 16) {
                        GridItemView(
                            color: Color(hex: "#5552FF"),
                            headerTitle: "финансы",
                            descriptionTitle: "Калькулятор жизни в твоем городе, цены на транспорт и жилье"
                        )
                        .frame(height: 160)
                        
                        HStack {
                            GridItemView(
                                color: Color(hex: "#FF5FC8"),
                                headerTitle: "язык",
                                descriptionTitle: "Важные фразы для знакомства со страной"
                            )
                            Image("Rectangle 19")
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        .frame(height: 174)
                        
                        HStack {
                            SubscriptionView()
                                .fixedSize(horizontal: false, vertical: true)
                                .frame(width: 120)
                            GridItemView(
                                color: Color(hex: "#5FFFF5"),
                                headerTitle: "про город",
                                descriptionTitle: "Инфраструктура и особенности проживания"
                            )
                        }
                    }
                }
                .padding(EdgeInsets(top: 44, leading: 16, bottom: 0, trailing: 16))
            }
        }
    }
}

struct PrepareToArriveScreen_Previews: PreviewProvider {
    static var previews: some View {
        PrepareToArriveView()
    }
}
