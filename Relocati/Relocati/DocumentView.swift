//
//  DocumentView.swift
//  Relocati
//
//  Created by Ilya Gruzdev on 03.12.2022.
//

import SwiftUI

struct DocumentView: View {
    @State var isOpen = false
    let didTap: () -> Void
    
    let backColor = Color(hex: "#FCFF5F")
    let blackColor = Color(hex: "#1E1E1E")
    let whiteColor = Color(hex: "#FFFFFF")
    
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                VStack(alignment: .leading) {
                    
                    Spacer()
                        .frame(height: 45)
                    
                    Text("документы")
                        .foregroundColor(blackColor)
                        .font(.grotesk(size: 38))
                    
                    Spacer()
                        .frame(height: 12)
                    
                    Text("Перечень документов, которые необходимы\nтебе для переезда на длительный срок")
                        .fixedSize()
                        .foregroundColor(blackColor)
                        .font(.inter(size: 14))
                    
                    Spacer()
                        .frame(height: 32)
                }
                .padding(.leading, 16)
                
                HStack {
                    Text("Загранпаспорт")
                        .foregroundColor(backColor)
                        .font(.inter(size: 16))
                    
                    Spacer()
                    
                    Image("galochka")
                        .padding(.vertical, 8)
                        .padding(.horizontal, 19)
                        .background(blackColor)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(backColor, lineWidth: 2)
                        )
                }
                .padding(.vertical, 30)
                .padding(.horizontal, 24)
                .background(blackColor)
                .cornerRadius(50)
                .padding(.horizontal, 16)
                
                Spacer()
                    .frame(height: 20)
            }
            
            makeCell(big: isOpen)
            
            Spacer()
                .frame(height: 20)
            
            HStack {
                Text("Справка о несудимости")
                    .foregroundColor(blackColor)
                    .font(.inter(size: 16))
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: 50, height: 26)
                    .foregroundColor(backColor)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(blackColor, lineWidth: 2)
                    )
            }
            .padding(.vertical, 30)
            .padding(.horizontal, 24)
            .overlay(
                RoundedRectangle(cornerRadius: 50)
                    .stroke(blackColor, lineWidth: 2)
            )
            .padding(.horizontal, 16)
            
            Spacer()
        }
        .padding(.top, 55)
        .padding(.bottom)
        .background(backColor)
        .edgesIgnoringSafeArea(.all)
    }
}

extension DocumentView {
    func makeCell(big: Bool) -> some View {
        VStack {
            HStack {
                Text("Выписка с банковского счёта")
                    .foregroundColor(blackColor)
                    .font(.inter(size: 16))
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: 50, height: 26)
                    .foregroundColor(backColor)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(blackColor, lineWidth: 2)
                    )
            }
            if big {
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Выписка из расчетного счета —\nкопия записей на счете в банке. \nОна подтверждает наличие счета,\nсовершение на нем финансовых\nопераций.\n\nЭто официальный документ – базовый\nэлемент для бухгалтера, основание для\nналогового учета и контролирующих\nгосударственных органов. В нем\nпредставлена вся финансовая\nинформация о счете клиента в полном\nобъеме. Выписка предоставляется в\nбанке клиенту, отправляется по почте,\nпредоставляется онлайн.")
                            .fixedSize()
                            .font(.inter(size: 14))
                            .foregroundColor(.black)
                        
                        Spacer()
                            .frame(height: 16)
                        
                        Text("Подробнее")
                            .font(.inter(size: 14))
                        Divider()
                            .background(blackColor)
                            .frame(width: 90)
                    }
                    Spacer()
                }
            }
        }
        .padding(.top, 30)
        .padding(.bottom, 30)
        .padding(.horizontal, 24)
        .overlay(
            RoundedRectangle(cornerRadius: 50)
                .stroke(blackColor, lineWidth: 2)
        )
        .padding(.horizontal, 16)
        .onTapGesture {
            self.isOpen.toggle()
        }
    }
}

struct DocumentView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentView(didTap: { })
    }
}
