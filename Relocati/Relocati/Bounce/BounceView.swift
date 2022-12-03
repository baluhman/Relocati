//
//  BounceView.swift
//  Relocati
//
//  Created by Ilya Gruzdev on 02.12.2022.
//

import SpriteKit
import SwiftUI

private func makeScene() -> DashboardScene {
    let scene = DashboardScene(size: UIScreen.main.bounds.size)
    scene.backgroundColor = UIColor(hex: "#1E1E1E")!
    return scene
}

struct BounceView: View {
    @StateObject var scene = makeScene()
    @State var allSelected = false
    
    let didTap: () -> Void
    
    let matchColor = Color(hex: "#E128FF")
    let blackColor = Color(hex: "#1E1E1E")
    let whiteColor = Color(hex: "#FFFFFF")

    var buttonTitle: String {
        if scene.isOneSelected ||
            scene.isTwoSelected ||
            scene.isThreeSelected ||
            scene.isFourSelected ||
            scene.isFiveSelected ||
            scene.isSixSelected ||
            allSelected {
            return "Готово"
        } else {
            return "Выбрать все"
        }
    }
    
    var buttonBackground: Color {
        if scene.isOneSelected ||
            scene.isTwoSelected ||
            scene.isThreeSelected ||
            scene.isFourSelected ||
            scene.isFiveSelected ||
            scene.isSixSelected ||
            allSelected {
            return matchColor
        } else {
            return whiteColor
        }
    }
    
    var body: some View {
        ZStack {
            SpriteView(scene: scene)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Button {
                    if scene.isOneSelected ||
                        scene.isTwoSelected ||
                        scene.isThreeSelected ||
                        scene.isFourSelected ||
                        scene.isFiveSelected ||
                        scene.isSixSelected ||
                        allSelected {
                        didTap()
                    } else {
                        scene.viewModel.chooseAll()
                        allSelected = true
                    }
                } label: {
                    HStack {
                        Spacer()
                        Text(buttonTitle)
                            .foregroundColor(blackColor)
                            .font(.inter(size: 24))
                        Spacer()
                    }
                        .padding(.vertical, 28)
                        .background(buttonBackground)
                        .cornerRadius(40)
                }
                .padding(.horizontal, 16)
            }
            .padding(.bottom, 16)
        }
    }
}

struct BounceDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        BounceView(didTap: { })
    }
}
