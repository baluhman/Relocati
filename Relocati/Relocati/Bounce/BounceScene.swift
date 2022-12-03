//
//  BounceScene.swift
//  Relocati
//
//  Created by Ilya Gruzdev on 03.12.2022.
//

import SpriteKit
import SwiftUI

class ViewModel: ObservableObject {
    @Published var one: SKShapeNode?
    @Published var two: SKShapeNode?
    @Published var three: SKShapeNode?
    @Published var four: SKShapeNode?
    @Published var five: SKShapeNode?
    @Published var six: SKShapeNode?
    
    init() {
        one = createNode(
            position: CGPoint(x: 130, y: 300),
            buttonSize: 220,
            color: UIColor(hex: "#5552FF")!,
            rotation: -CGFloat.pi * 0.27,
            yourText: "фина\nнсы"
        )
        two = createNode(
            position: CGPoint(x: 20, y: 400),
            buttonSize: 120,
            color: UIColor(hex: "#5FFFF5")!,
            rotation: CGFloat.pi * 0,
            yourText: "про\nгород"
        )
        three = createNode(
            position: CGPoint(x: 330, y: 450),
            buttonSize: 120,
            color: UIColor(hex: "#AF5FFF")!,
            rotation: CGFloat.pi * 0,
            yourText: "билет"
        )
        four = createNode(
            position: CGPoint(x: 36, y: 550),
            buttonSize: 220,
            color: UIColor(hex: "#7FFF5F")!,
            rotation: CGFloat.pi * 0,
            yourText: "здоро\nвье"
        )
        
        five = createNode(
            position: CGPoint(x: -20, y: 700),
            buttonSize: 170,
            color: UIColor(hex: "#FF5FC8")!,
            rotation: -CGFloat.pi * 0,
            yourText: "язык"
        )
        
        six = createNode(
            position: CGPoint(x: 300, y: 750),
            buttonSize: 220,
            color: UIColor(hex: "#FCFF5F")!,
            rotation: CGFloat.pi * 0.234,
            yourText: "докум\nенты"
        )
    }
    public func chooseAll() {
        for node in [one, two, three, four, five, six] {
            node?.strokeColor = .white
            node?.fillColor = .white
        }
    }
    
    private func createNode(
        position: CGPoint,
        buttonSize: CGFloat,
        color: UIColor,
        rotation: CGFloat,
        yourText: String
    ) -> SKShapeNode {
        let node = SKShapeNode(rect: CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize), cornerRadius: 20)
        node.position = position
        node.fillColor = color
        node.physicsBody = .init(rectangleOf: CGSize(width: buttonSize, height: buttonSize), center: CGPoint(x: node.frame.size.width / 2, y: node.frame.size.height / 2))
        node.physicsBody?.affectedByGravity = true
        
        let label = SKLabelNode(text: yourText)
        label.numberOfLines = 0
        label.fontName = "SoyuzGrotesk-Bold"
        label.fontSize = buttonSize / 5;
        label.fontColor = .black
        label.position = CGPoint(
            x: label.frame.width / 1.3,
            y: node.frame.height - label.frame.height - 20
        )
        
        node.addChild(label)
        
        node.zRotation = rotation
        node.fillColor = color
        node.strokeColor = color
        return node
        
    }
}

class DashboardScene: SKScene, ObservableObject {
    @Published var viewModel = ViewModel()
    
    @Published var isOneSelected = false
    @Published var isTwoSelected = false
    @Published var isThreeSelected = false
    @Published var isFourSelected = false
    @Published var isFiveSelected = false
    @Published var isSixSelected = false
    
    override init(size: CGSize) {
        super.init(size: size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView) {
        physicsBody = .init(edgeLoopFrom: CGRect(x: -10, y: 0, width: UIScreen.main.bounds.width + 20, height: UIScreen.main.bounds.height + 500))
        
        
        addChild(viewModel.one!)
        addChild(viewModel.two!)
        addChild(viewModel.three!)
        addChild(viewModel.four!)
        addChild(viewModel.five!)
        addChild(viewModel.six!)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        if let scene = viewModel.one?.scene,
           scene.atPoint(location) == viewModel.one {
            if isOneSelected == false {
                viewModel.one?.fillColor = .white
                viewModel.one?.strokeColor = .white
                isOneSelected = true
            } else {
                viewModel.one?.fillColor = UIColor(hex: "#5552FF")!
                viewModel.one?.strokeColor = UIColor(hex: "#5552FF")!
                isOneSelected = false
            }
        }
        
        if let scene = viewModel.two?.scene,
           scene.atPoint(location) == viewModel.two {
            if isTwoSelected == false {
                viewModel.two?.fillColor = .white
                viewModel.two?.strokeColor = .white
                isTwoSelected = true
            } else {
                viewModel.two?.fillColor = UIColor(hex: "#5FFFF5")!
                viewModel.two?.strokeColor = UIColor(hex: "#5FFFF5")!
                isTwoSelected = false
            }
        }
        
        if let scene = viewModel.three?.scene,
           scene.atPoint(location) == viewModel.three {
            if isThreeSelected == false {
                viewModel.three?.fillColor = .white
                viewModel.three?.strokeColor = .white
                isThreeSelected = true
            } else {
                viewModel.three?.fillColor = UIColor(hex: "#AF5FFF")!
                viewModel.three?.strokeColor = UIColor(hex: "#AF5FFF")!
                isThreeSelected = false
            }
        }
        if let scene = viewModel.four?.scene,
           scene.atPoint(location) == viewModel.four {
            if isFourSelected == false {
                viewModel.four?.fillColor = .white
                viewModel.four?.strokeColor = .white
                isFourSelected = true
            } else {
                viewModel.four?.fillColor = UIColor(hex: "#7FFF5F")!
                viewModel.four?.strokeColor = UIColor(hex: "#7FFF5F")!
                isFourSelected = false
            }
        }
        if let scene = viewModel.five?.scene,
           scene.atPoint(location) == viewModel.five {
            if isFiveSelected == false {
                viewModel.five?.fillColor = .white
                viewModel.five?.strokeColor = .white
                isFiveSelected = true
            } else {
                viewModel.five?.fillColor = UIColor(hex: "#FF5FC8")!
                viewModel.five?.strokeColor = UIColor(hex: "#FF5FC8")!
                isFiveSelected = false
            }
        }
        if let scene = viewModel.six?.scene,
           scene.atPoint(location) == viewModel.six {
            if isSixSelected == false {
                viewModel.six?.fillColor = .white
                viewModel.six?.strokeColor = .white
                isSixSelected = true
            } else {
                viewModel.six?.fillColor = UIColor(hex: "#FCFF5F")!
                viewModel.six?.strokeColor = UIColor(hex: "#FCFF5F")!
                isSixSelected = false
            }
        }
    }
}
