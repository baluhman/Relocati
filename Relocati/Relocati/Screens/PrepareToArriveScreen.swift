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
                
                VStack(alignment: .leading) {
                    // TODO: - поменять шрифты на кастомные вместо системных
                    HStack(alignment: .center) {
                        Image("Ellipse 10")
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 3) {
                            Text("Александр")
                                .font(.system(size: 14))
                                .lineSpacing(14)
                                .foregroundColor(.white)
                                .padding(3)
                            Text("82 дня до переезда")
                                .font(.system(size: 14))
                                .foregroundColor(.white)
                                .opacity(0.6)
                        }
                        .padding()
                        
                        Spacer()
                        
                        VStack(spacing: 5) {
                            Text("buddy pro")
                                .font(.system(size: 14))
                                .frame(width: 82, height: 25)
                                .background(.purple)
                                .cornerRadius(19)
                            
                            Text("Подписаться")
                                .font(.system(size: 10))
                                .padding(0.0)
                                .foregroundColor(.white)
                        }
                    }
                    .padding()
                    
                    VStack(alignment: .leading) {
                        Text("cтамбул, турция").font(.system(size: 23))
                            .foregroundColor(.white)
                        
                        ProgressBar()
                            .frame(height: 13)
                            .padding(
                                EdgeInsets(
                                    top: 4,
                                    leading: 4,
                                    bottom: 4,
                                    trailing: 4)
                            )
                    }
                    .padding()
                    
                    HStack {
                        Text("Уровень 1")
                            .padding(
                            EdgeInsets(
                                top: 10,
                                leading: 16,
                                bottom: 10,
                                trailing: 8
                            )
                        )
                        .foregroundColor(.white.opacity(0.6))
                        
                        Circle()
                            .frame(width: 4, height: 4)
                            .foregroundColor(.pink)
                        
                        Text("На чемоданах")
                            .foregroundColor(.white)
                    }
                    
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
                        GridItemView(
                            color: Color(hex: "8D8D8D"),
                            headerTitle: "подписка",
                            descriptionTitle: ""
                        ).frame(width: 81)
                        GridItemView(
                            color: Color(hex: "#5FFFF5"),
                            headerTitle: "про город",
                            descriptionTitle: "Инфраструктура и особенности проживания"
                        )
                    }
                }
            }
        }
    }
}

struct PrepareToArriveScreen_Previews: PreviewProvider {
    static var previews: some View {
        PrepareToArriveView()
    }
}
