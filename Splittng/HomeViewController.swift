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
        splitCheckButton.setTitle(NSLocalizedString("home.button.splitCheck", comment:""), forState: UIControlState.Normal)
        divideMealsButton.setTitle(NSLocalizedString("home.button.divideMeals", comment:""), forState: UIControlState.Normal)
        historyButton.setTitle(NSLocalizedString("home.button.history", comment:"History Button"), forState: UIControlState.Normal)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "pepe" {
            print("lolo")
        }
        
        if segue.identifier == "checkViewController" {
            let vc = segue.destinationViewController as? CheckViewController
            print(vc)
        }
    }



}
