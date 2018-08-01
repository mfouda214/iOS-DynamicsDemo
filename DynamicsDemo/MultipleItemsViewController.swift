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
    
    @IBAction func addViewButtonTapped(_ sender: AnyObject) {
        
    }
}
