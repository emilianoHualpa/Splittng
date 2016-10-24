//
//  CheckViewController.swift
//  Splttng
//
//  Created by Milo on 9/1/16.
//  Copyright © 2016 ar.com.milohualpa. All rights reserved.
//

import UIKit

class CheckViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation
    */
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "pepe" {
            print("lolo")
        }
        
        if segue.identifier == "checkViewController" {
            print("ok")
        }
    }
 

}


