//
//  ViewController.swift
//  Alamofire&SwiftyJSON
//
//  Created by Nahin Ahmed on 2/20/17.
//  Copyright © 2017 Nahin Ahmed. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = "https://codewithchris.com/code/afsample.json"
        
        
        // Working with only Alamofire
        
        Alamofire.request(url).responseJSON { (response) in
            if let json = response.result.value as AnyObject?{
                
                // Prints all JSON data
                print(json)
                
                
                // Prints firstkey string value
                print(json["firstkey"] as! String)
                
                // Prints secondkey array
                print(json["secondkey"] as! NSArray)
                
            }
        }
        
        
        
        // Working with SwiftyJSON
        
        Alamofire.request(url, method: .get).validate().responseJSON { (response) in
            switch response.result{
                
                case .success(let value):
                    let json = JSON(value)
                   
                    // Prints all JSON data
                    print(json)
                
                    // Prints firstkey string value
                    print(json["firstkey"])
                
                    // Prints secondkey array
                    print(json["secondkey"])
                
                    // Prints secondkey array 1st element
                    print(json["secondkey"][0])
                
                case .failure(let error):
                    
                    print(error)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

