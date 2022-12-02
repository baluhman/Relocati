//
//  UpLevelView.swift
//  Relocati
//
//  Created by Ilya Gruzdev on 03.12.2022.
//

import SwiftUI

struct UpLevelView: View {
    
    let didTap: () -> Void
    
    let backColor = Color(hex: "#E128FF")
    let blackColor = Color(hex: "#1E1E1E")
    let whiteColor = Color(hex: "#FFFFFF")
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Text("ты открыл\nновый уровень!")
                    .font(.grotesk(size: 42))
                    .foregroundColor(blackColor)
                
                Spacer()
                    .frame(height: 28)
                
                Text("Теперь ты готов к переезду и получаешь\nдоступ к новым темам – изучи их\nи чувствуй себя в новой стране как дома.")
                    .font(.inter(size: 14))
                    .foregroundColor(blackColor)
                
                Spacer()
                    .frame(height: 22)
                
                HStack(spacing: 12) {
                    Text("поиск жилья")
                        .font(.grotesk(size: 14))
                        .foregroundColor(whiteColor)
                        .padding(.vertical, 7)
                        .padding(.horizontal, 10)
                        .background(blackColor)
                        .cornerRadius(10)
                    Text("сим-карта")
                        .font(.grotesk(size: 14))
                        .foregroundColor(whiteColor)
                        .padding(.vertical, 7)
                        .padding(.horizontal, 10)
                        .background(blackColor)
                        .cornerRadius(10)
                    Text("разговорник")
                        .font(.grotesk(size: 14))
                        .foregroundColor(whiteColor)
                        .padding(.vertical, 7)
                        .padding(.horizontal, 10)
                        .background(blackColor)
                        .cornerRadius(10)
                }
                
                Spacer()
                    .frame(height: 16)
                
                HStack(spacing: 12) {
                    Text("банковские карты")
                        .font(.grotesk(size: 14))
                        .foregroundColor(whiteColor)
                        .padding(.vertical, 7)
                        .padding(.horizontal, 10)
                        .background(blackColor)
                        .cornerRadius(10)
                    Text("внж")
                        .font(.grotesk(size: 14))
                        .foregroundColor(whiteColor)
                        .padding(.vertical, 7)
                        .padding(.horizontal, 10)
                        .background(blackColor)
                        .cornerRadius(10)
                    Text("транспорт")
                        .font(.grotesk(size: 14))
                        .foregroundColor(whiteColor)
                        .padding(.vertical, 7)
                        .padding(.horizontal, 10)
                        .background(blackColor)
                        .cornerRadius(10)
                }
                
                Spacer()
                    .frame(height: 52)
                
                Button {
                    didTap()
                } label: {
                    Image("buttonNext")
                }
            }
            Spacer()
        }
        .padding(.top, 57)
        .padding(.horizontal, 27)
        .padding(.bottom, 60)
        .edgesIgnoringSafeArea(.all)
        .background(backColor)
        .cornerRadius(40, corners: [.topLeft, .topRight])
    }
}

struct UpLevelView_Previews: PreviewProvider {
    static var previews: some View {
        UpLevelView(didTap: { })
    }
}
