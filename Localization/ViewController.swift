//
//  ViewController.swift
//  Localization
//
//  Created by Jony Singla on 02/02/17.
//  Copyright © 2017 Jony Singla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThre: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    
    @IBOutlet weak var labelFive: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // for plist file
        
        var myDict: NSDictionary?
        if let path = Bundle.main.path(forResource: "Localizable", ofType: "plist") {
            myDict = NSDictionary(contentsOfFile: path)
            labelOne.text = myDict?.object(forKey:"GOODMORNINGFRIENDS") as! String?
            labelTwo.text = (myDict?.value(forKey: "New item" ) as AnyObject).value(forKey: "GOODEVENING") as? String
        }
    
        // for .txt file
        
        var myDict1: NSDictionary?
        if let path1 = Bundle.main.path(forResource: "countrycode", ofType: "txt") {
            myDict1 = NSDictionary(contentsOfFile: path1)
            labelFour.text = myDict1?.object(forKey:"GOODMORNING") as! String?
        }
        
        labelFive.text = NSLocalizedString("GOODMORNING", comment: "Good morning")
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

