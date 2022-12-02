//
//  BounceView.swift
//  Relocati
//
//  Created by Ilya Gruzdev on 02.12.2022.
//

import SwiftUI
import SpriteKit

class DashboardScene: SKScene {
    var one: SKShapeNode?
    var two: SKShapeNode?
    var three: SKShapeNode?
    var four: SKShapeNode?
    var five: SKShapeNode?
    var six: SKShapeNode?
    
    var isOneSelected = false
    var isTwoSelected = false
    var isThreeSelected = false
    var isFourSelected = false
    var isFiveSelected = false
    var isSixSelected = false
    
    
    override init(size: CGSize) {
        super.init(size: size)
        
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
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView) {
        physicsBody = .init(edgeLoopFrom: CGRect(x: -10, y: 0, width: UIScreen.main.bounds.width + 20, height: UIScreen.main.bounds.height + 500))
        
        
        addChild(one!)
        addChild(two!)
        addChild(three!)
        addChild(four!)
        addChild(five!)
        addChild(six!)
    }
    
    func getPosition(for location: CGPoint) {
        
    }
                                                     
    @objc
    func gestureAction() {
        print("proverka")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        if let scene = one?.scene,
           scene.atPoint(location) == one {
            if isOneSelected == false {
                one?.fillColor = .white
                one?.strokeColor = .white
                isOneSelected = true
            } else {
                one?.fillColor = UIColor(hex: "#5552FF")!
                one?.strokeColor = UIColor(hex: "#5552FF")!
                isOneSelected = false
            }
        }
        
        if let scene = two?.scene,
           scene.atPoint(location) == two {
            if isTwoSelected == false {
                two?.fillColor = .white
                two?.strokeColor = .white
                isTwoSelected = true
            } else {
                two?.fillColor = UIColor(hex: "#5FFFF5")!
                two?.strokeColor = UIColor(hex: "#5FFFF5")!
                isTwoSelected = false
            }
        }
        
        if let scene = three?.scene,
           scene.atPoint(location) == three {
            if isThreeSelected == false {
                three?.fillColor = .white
                three?.strokeColor = .white
                isThreeSelected = true
            } else {
                three?.fillColor = UIColor(hex: "#AF5FFF")!
                three?.strokeColor = UIColor(hex: "#AF5FFF")!
                isThreeSelected = false
            }
        }
        if let scene = four?.scene,
           scene.atPoint(location) == four {
            if isFourSelected == false {
                four?.fillColor = .white
                four?.strokeColor = .white
                isFourSelected = true
            } else {
                four?.fillColor = UIColor(hex: "#7FFF5F")!
                four?.strokeColor = UIColor(hex: "#7FFF5F")!
                isFourSelected = false
            }
        }
        if let scene = five?.scene,
           scene.atPoint(location) == five {
            if isFiveSelected == false {
                five?.fillColor = .white
                five?.strokeColor = .white
                isFiveSelected = true
            } else {
                five?.fillColor = UIColor(hex: "#FF5FC8")!
                five?.strokeColor = UIColor(hex: "#FF5FC8")!
                isFiveSelected = false
            }
        }
        if let scene = six?.scene,
           scene.atPoint(location) == six {
            if isSixSelected == false {
                six?.fillColor = .white
                six?.strokeColor = .white
                isSixSelected = true
            } else {
                six?.fillColor = UIColor(hex: "#FCFF5F")!
                six?.strokeColor = UIColor(hex: "#FCFF5F")!
                isSixSelected = false
            }
        }
    }
    
    public func createNode(
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

func makeScene() -> DashboardScene {
    let scene = DashboardScene(size: UIScreen.main.bounds.size)
    scene.backgroundColor = UIColor(hex: "#1E1E1E")!
    return scene
}

struct BounceView: View {
    
    var body: some View {
        let scene = makeScene()
            SpriteView(scene: scene)
            .ignoresSafeArea()
    }
}

struct BounceDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        BounceView()
    }
}
