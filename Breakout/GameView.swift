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
        var paddle: CGRect?
        if let x = paddleX {
            let width = self.bounds.width / 5
            paddle = CGRect(x: x - (width/2), y: self.bounds.height * (18/20), width: width , height: self.bounds.height / 20)
        } else {
            paddle = CGRect(x: self.bounds.midX, y: self.bounds.height - 200, width: self.bounds.width / 5, height: self.bounds.height / 20)
        }
        if paddle != nil {
            let bezPath = UIBezierPath(rect: paddle!)
            UIColor.redColor().set()
            bezPath.stroke()
            bezPath.fill()
        }
    }
    

}
