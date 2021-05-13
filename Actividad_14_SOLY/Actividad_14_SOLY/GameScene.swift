//
//  GameScene.swift
//  Actividad_14_SOLY
//
//  Created by user167235 on 5/12/21.
//  Copyright © 2021 user167235. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let fondo = SKSpriteNode(imageNamed: "fondo2")
    let nave = SKSpriteNode(imageNamed:"Spaceship")
    
    override func didMove(to view: SKView) {
        fondo.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        nave.size = CGSize(width: 200, height: 200)
        nave.position = CGPoint(x: 0, y: -305)
        fondo.zPosition = -1
        
        addChild(fondo)
        fondo.addChild(nave)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        nave.run(SKAction.move(to: CGPoint(x: 0, y: fondo.size.height), duration: 2.0))
    }
    
    override func update(_ currentTime: TimeInterval) {
        nave.position = CGPoint(x: 0, y: -305)
    }
    
}
