//
//  HomeViewController.swift
//  Splittng
//
//  Created by Milo on 8/25/16.
//  Copyright © 2016 ar.com.milohualpa. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    private let buttonsCornerRadius : CGFloat = 5.0
    
    @IBOutlet weak var logoView: UIImageView!
    @IBOutlet weak var splitCheckButton: UIButton!
    @IBOutlet weak var divideMealsButton: UIButton!
    @IBOutlet weak var historyButton: UIButton!
    @IBOutlet weak var buttonContainerView: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtonsText()
        roundContainerView()

    }
    
    func roundContainerView()
    {
        buttonContainerView.layer.cornerRadius = buttonsCornerRadius
        buttonContainerView.clipsToBounds = true
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
