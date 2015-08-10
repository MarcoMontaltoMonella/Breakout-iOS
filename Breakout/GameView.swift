//
//  GameView.swift
//  Breakout
//
//  Created by Marco Montalto Monella on 10/08/2015.
//  Copyright (c) 2015 Marco Montalto Monella. All rights reserved.
//

import UIKit

class GameView: UIView {
    
    var paddleX: CGFloat? {
        didSet{
            setNeedsDisplay()
        }
    }

    override func drawRect(rect: CGRect) {
        // Drawing code
        let width = self.bounds.width / 4
        let height = self.bounds.height / 20
        
        let paddleOrigin = CGPoint(x: self.bounds.midX - (width/2), y: self.bounds.height * (18/20))
        var paddle = CGRect(x: paddleOrigin.x, y: paddleOrigin.y, width: width , height: height)
        
        
        if let x = paddleX {
            paddle.origin.x = x - (width/2)
        }
        
        let paddlePath = UIBezierPath(rect: paddle)
        var ballOrigin = CGPoint(x: paddleOrigin.x, y: paddleOrigin.y - 15)
        
        if let x = paddleX {
            ballOrigin = CGPoint(x: x, y: paddleOrigin.y - 15)
        }
        
        let ballPath = UIBezierPath(arcCenter: ballOrigin, radius: CGFloat(10), startAngle: CGFloat(0), endAngle: CGFloat(2 * M_PI), clockwise: true)
        
        UIColor.redColor().set()
        paddlePath.stroke()
        paddlePath.fill()
        UIColor.blueColor().set()
        ballPath.stroke()
        ballPath.fill()
    }
    

}
