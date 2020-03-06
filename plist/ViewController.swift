//
//  ViewController.swift
//  plist
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        readPlist()
        // Do any additional setup after loading the view.
    }

    func readPlist()
    {
        
        if  let bundlePath = Bundle.main.path(forResource: "Customer", ofType: "plist")
            {
            //print(bundlepath)
                
                if let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
                {
                //print(dictionary)
                if let countries = dictionary["Country"] as? [String]
                {
                    for v in countries
                    {
                        print(v)
                    }
                }
                    if let userList = dictionary["Users"] as? [[String: String]]
                    {
                        var flag = false
                        for user in userList
                        {
                            if user["UserName"] == "abc" && user["Password"] == "abc@123"
                            {
                                flag = true
                            }
                        }
                        if flag == true
                        {
                            print("valid user")
                        }
                        else
                        {
                            print("invalid user")
                        }
                    }
                }
            }

        }

}

