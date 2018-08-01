//
//  MultipleItemsViewController.swift
//  DynamicsDemo
//
//  Updated by Mohamed Sobhy Fouda on 8/31/18.
//  Created by Hesham Abd-Elmegid on 6/23/16.
//  Copyright © 2016 CareerFoundy. All rights reserved.
//

import UIKit

class MultipleItemsViewController: UIViewController {
    
    // Add Di=ynamic Animator
    lazy var animator: UIDynamicAnimator = {
        return UIDynamicAnimator(referenceView: self.view)
    }()
    
    // Create View with random positions and color
    func createView() -> UIView {
        let x = randomNumber(min: 0, max: view.bounds.width)
        let frame = CGRect(x: CGFloat(x), y: 0, width: 40, height: 40)
        let squareView = UIView(frame: frame)
        squareView.backgroundColor = randomColor()
        return squareView
    }
    
    // Randomizing
    func randomNumber(min: CGFloat, max: CGFloat) -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max) * (max - min) + min
    }
    
    // Randomizing Color
    func randomColor() -> UIColor {
        return UIColor(red: randomNumber(min: 0, max: 1), green: randomNumber(min: 0, max: 1), blue: randomNumber(min: 0, max: 1), alpha: 1)
    }
    
    @IBAction func addViewButtonTapped(_ sender: AnyObject) {
        let squareView = createView()
        view.addSubview(squareView)
    }
}
