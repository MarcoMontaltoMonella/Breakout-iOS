//
//  BreakoutViewController.swift
//  Breakout
//
//  Created by Marco Montalto Monella on 10/08/2015.
//  Copyright (c) 2015 Marco Montalto Monella. All rights reserved.
//

import UIKit

class BreakoutViewController: UIViewController {

    
    @IBOutlet weak var gameView: GameView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        gameView.paddleX = view.bounds.midX
    }

    @IBAction func pan(sender: UIPanGestureRecognizer) {
        gameView.paddleX = sender.locationInView(view).x
    }

}

