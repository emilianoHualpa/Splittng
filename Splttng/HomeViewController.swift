//
//  HomeViewController.swift
//  Splittng
//
//  Created by Milo on 8/25/16.
//  Copyright © 2016 ar.com.milohualpa. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var logoView: UIImageView!
    @IBOutlet weak var splitCheckButton: UIButton!
    @IBOutlet weak var divideMealsButton: UIButton!
    @IBOutlet weak var historyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtonsText()

    }
    
    //Let's dinamically set up the labels on the buttons.
    fileprivate func setupButtonsText() {
        splitCheckButton.setTitle(NSLocalizedString("home.button.splitCheck", comment:""), for: UIControlState())
        divideMealsButton.setTitle(NSLocalizedString("home.button.divideMeals", comment:""), for: UIControlState())
        historyButton.setTitle(NSLocalizedString("home.button.history", comment:"History Button"), for: UIControlState())
    }
    
}
