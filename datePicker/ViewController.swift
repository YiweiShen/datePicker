//
//  ViewController.swift
//  datePicker
//
//  Created by David on 15/10/8.
//  Copyright © 2015年 ToBeNamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dataPicker: UIDatePicker!
    
    @IBAction func whatDay(sender: AnyObject) {
        //grab the selected date from date picker
        let chosenDate = self.dataPicker.date
        
        //create NSDateFormatter
        let formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        
        //grab the day and create a message
        let day = formatter.stringFromDate(chosenDate)
        let result = "That is a \(day)"
        
        //creat alert controller
        let myAlert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        //add "ok" buttom
        myAlert.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: nil))
        
        //show the alert
        self.presentViewController(myAlert, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

