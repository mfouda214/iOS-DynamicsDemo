//
//  SingleItemViewController.swift
//  DynamicsDemo
//
//  Updated by Mohamed Sobhy Fouda on 8/31/18.
//  Created by Hesham Abd-Elmegid on 6/23/16.
//  Copyright © 2016 CareerFoundy. All rights reserved.
//

import UIKit

class SingleItemViewController: UIViewController {
    let blueSquareView = UIView()
    
    // Add Dynamic Animator
    lazy var animator: UIDynamicAnimator = {
        return UIDynamicAnimator(referenceView: self.view)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBlueSquareView()
    }
    
    func addBlueSquareView() {
        let frame = CGRect(x: 50, y: 70, width: 150, height: 150)
        blueSquareView.frame = frame
        blueSquareView.backgroundColor = .blue
        view.addSubview(blueSquareView)
    }

    @IBAction func addBehaviorButtonTapped(_ sender: AnyObject) {
        let gravityBehavior = UIGravityBehavior(items: [blueSquareView])
        animator.addBehavior(gravityBehavior)
    }
}

