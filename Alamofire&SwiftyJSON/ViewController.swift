//
//  ViewController.swift
//  Alamofire&SwiftyJSON
//
//  Created by Nahin Ahmed on 2/20/17.
//  Copyright © 2017 Nahin Ahmed. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = "https://codewithchris.com/code/afsample.json"
        
        
        // Working with only Alamofire
        
        Alamofire.request(url).responseJSON { (response) in
            if let json = response.result.value as AnyObject?{
                
                // Prints all JSON data
                print(json)
                
                
                // Prints string value
                print(json["firstkey"] as! String)
                
                // Prints array value
                print(json["secondkey"] as! NSArray)
                
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

