//
//  CountryMatchView.swift
//  Relocati
//
//  Created by Ilya Gruzdev on 03.12.2022.
//

import SwiftUI

struct CountryMatchView: View {
    
    let didTap: () -> Void
    
    let matchColor = Color(hex: "#E128FF")
    let blackColor = Color(hex: "#1E1E1E")
    let whiteColor = Color(hex: "#FFFFFF")
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Group {
                    Text("Больше всего тебе подойдет")
                        .font(.inter(size: 14))
                    
                    Spacer()
                        .frame(height: 19)
                    
                    Image("turkey")
                        .resizable()
                        .scaledToFit()
                    
                    HStack {
                        Text("стамбул,\nтурция")
                            .font(.grotesk(size: 28))
                            .fixedSize()
                        
                        Spacer()
                        
                        VStack {
                            Text("best match")
                                .font(.grotesk(size: 14))
                                .padding(.vertical, 7)
                                .padding(.horizontal, 9)
                                .background(matchColor)
                                .cornerRadius(20)
                            Spacer()
                                .frame(height: 5)
                            
                            Text("89%")
                                .font(.inter(size: 20))
                        }
                    }
                    
                    
                    Spacer()
                        .frame(height: 19)
                    
                    HStack(spacing: 8) {
                        makeBullet(text: "На длинный срок")
                        makeBullet(text: "Английский язык")
                    }
                    
                    Spacer()
                        .frame(height: 9)
                    
                    HStack(spacing: 8) {
                        makeBullet(text: "Упрощенный ВНЖ")
                        makeBullet(text: "Налоговое резиденство")
                    }
                    
                    Spacer()
                        .frame(height: 24)
                    
                    HStack {
                        Text("Проживание в месяц:")
                            .font(.inter(size: 14))
                            .foregroundColor(blackColor)
                        
                        Spacer()
                        
                        Text("700-1000$")
                            .font(.inter(size: 14))
                            .foregroundColor(blackColor)
                        
                    }
                }
                
                Spacer()
                    .frame(height: 39)
                
                Button {
                    didTap()
                } label: {
                    Text("Да, мне подходит")
                        .font(.inter(size: 20))
                        .padding(.vertical, 28)
                        .padding(.horizontal, 83)
                        .foregroundColor(whiteColor)
                        .background(blackColor)
                        .cornerRadius(40)
                }
                Spacer()
                    .frame(height: 17)
            }
            .padding(.top, 63)
            .padding(.leading, 17)
            .padding(.trailing, 16)
            
            VStack {
                HStack {
                    Spacer()
                Text("Ещё 5 подходящих городов")
                        .foregroundColor(.gray)
                    Spacer()
                }
                Spacer()
                    .frame(height: 36)
                
                VStack(alignment: .leading) {
                    HStack {
                        Image("dubai")
                        
                        Spacer()
                            .frame(width: 10)
                        
                        Text("дубай,\nаоэ")
                            .font(.grotesk(size: 28))
                            .foregroundColor(whiteColor)
                            .fixedSize()
                        
                        Spacer()
                        
                        Text("60%")
                            .font(.inter(size: 20))
                            .foregroundColor(whiteColor)
                            .padding(.vertical, 9)
                            .padding(.horizontal, 17)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(whiteColor, lineWidth: 2)
                            )
                    }
                    
                    Spacer()
                        .frame(height: 13)
                
                    HStack(spacing: 8) {
                        makeBullet(text: "На длинный срок")
                        makeBullet(text: "Доступная медицина")
                    }
                    
                    Spacer()
                        .frame(height: 9)
                    
                    makeBullet(text: "Английский язык")
                    
                    Spacer()
                        .frame(height: 20)
                    
                    HStack {
                        Text("Проживание в месяц:")
                            .font(.inter(size: 14))
                            .foregroundColor(whiteColor)
                        
                        Spacer()
                        
                        Text("1500-3000$")
                            .font(.inter(size: 14))
                            .foregroundColor(whiteColor)
                    }
                }
            }
            .padding(.top, 25)
            .padding(.horizontal, 16)
            .padding(.bottom)
            .background(blackColor)
            .cornerRadius(40, corners: [.topLeft, .topRight])
            .offset(y: 40)
        }
        .edgesIgnoringSafeArea(.all)
    }
    
}

extension CountryMatchView {
    func makeBullet(text: String) -> some View {
        HStack(spacing: 8) {
            Circle()
                .frame(width: 4, height: 4)
                .foregroundColor(matchColor)
            
            Text(text)
                .font(.inter(size: 14))
                .foregroundColor(.gray)
        }
    }
}

struct CountryMatchView_Previews: PreviewProvider {
    static var previews: some View {
        CountryMatchView(didTap: { })
    }
}
