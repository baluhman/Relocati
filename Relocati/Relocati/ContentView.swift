//
//  ContentView.swift
//  Relocati
//
//  Created by Oleg Krasnov on 02/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State var nextLevelPresented = false
    @State var countryMatchPresented = false
    
    var body: some View {
        ZStack {
            //основной экран тут, с кнопкой какой-то делающий nextLevelPresented = true
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button {
                        nextLevelPresented = true
                    } label: {
                        Text("present level")
                    }
                    Spacer()
                }
                Spacer()
            }
            .background(Color.yellow)
            .opacity(nextLevelPresented ? 0 : 1)
            .animation(.linear(duration: 0.3), value: nextLevelPresented)
            
            UpLevelView() {
                self.countryMatchPresented = true
                self.nextLevelPresented = false
            }
            .offset(y: self.nextLevelPresented ? 170 : UIScreen.main.bounds.height)
            .animation(.spring())
            .frame(width: UIScreen.main.bounds.width)
            .edgesIgnoringSafeArea(.all)
        }
        .fullScreenCover(isPresented: $countryMatchPresented) {
            CountryMatchView() {
                // тут открываем следующий (вроде нет по флоу дальше)
                self.countryMatchPresented = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
