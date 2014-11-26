//
//  SecondViewController.swift
//  test
//
//  Created by Martin Brunner on 26.11.14.
//  Copyright (c) 2014 Martin Brunner. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var secondQuestionView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
     //   secondQuestionView.backgroundColor = UIColor.darkGrayColor()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func absendenButtonTapped(sender: UIButton) {
                dismissViewControllerAnimated(true, completion: nil)
        
        println("Dismissed")
    }

    @IBAction func sendButtonTapped(sender: UIBarButtonItem) {
   
        showAlertWithText(header: "Herzlichen Dank!", message: "Wir wünschen Ihnen eine gute Heimreise!")
        dismissViewControllerAnimated(false, completion: nil)
        

    }
    
  //Helper
    
    func showAlertWithText (header: String = "Warning", message: String) {
        var alert = UIAlertController(title: header, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)


    }
}
