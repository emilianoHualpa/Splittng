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
    private func setupButtonsText() {
        splitCheckButton.setTitle(
            String(NSLocalizedString("home.button.splitCheck", comment:"Split Check Text Button"))?.uppercased(with: nil),
            for: UIControlState()
        )
        divideMealsButton.setTitle(NSLocalizedString("home.button.groupExpenses", comment:"Group Expense Text Button"), for: UIControlState())
        historyButton.setTitle(NSLocalizedString("home.button.history", comment:"History Text Button"), for: UIControlState())
    }
    
}
