//
//  ViewController.swift
//  pocketBaristaiOS
//
//  Created by Ruby Abutaleb on 2/20/18.
//  Copyright © 2018 rareTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    class drink{
        
        private var sweetLevel: Int = 0
        private var caffLevel: Int = 0
        private var dairyLevel: Int = 0
        
        //set sweetness level
        func setSweet(sweetVar: Int){
            sweetLevel=sweetVar
        }
        
        //set caffeine level
        func setCaff(caffVar: Int){
            caffLevel = caffVar
        }
        
        //set dairy level
        func setDairy(dairyVar: Int){
            dairyLevel = dairyVar
        }
        
        enum drinkType{
            case Coffee
            case Tea
        }
        enum drinkTemp{
            case Hot
            case Iced
        }
        private var drinkTemp: String?
        
        
        //constructor
        init(){
        }
    }

}

