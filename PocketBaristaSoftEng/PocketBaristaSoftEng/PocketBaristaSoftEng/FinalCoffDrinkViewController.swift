//
//  finalCoffDrinkViewController.swift
//  PocketBaristaSoftEng
//
//  Created by Ruby Abutaleb on 5/1/18.
//  Copyright © 2018 CPSC362. All rights reserved.
//

import Foundation
import UIKit

class FinalCoffDrinkViewController: UIViewController{
    
    @IBOutlet weak var navyBlockImg: UIImageView!
    @IBOutlet weak var finalCoffLabel1: UILabel!
    @IBOutlet weak var drinkIconImg: UIImageView!
    @IBOutlet weak var finalCoffLabel2: UILabel!
    @IBAction func nextDrinkBtn(_ sender: UIBarButtonItem)
    {
        performSegue(withIdentifier: "anotherDrinkView", sender: nil)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let caffeine = coffDrink.getCaff()
        let temp = coffDrink.getTemp()
        let dairy = coffDrink.getDairy()
        let sweetness = coffDrink.getSweet()
        var name = "still not working"
        
        let coffeeURL = "http://yorbalindasoftware.com/barista/coffee?Temperature=" + String(temp) + "&Caffeine=" + String(caffeine) + "&Dairy=" + String(dairy)
        
        print(coffeeURL)
        let url = URL(string: coffeeURL)
        let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
            if error != nil
            {
                print ("ERROR")
            }
            else
            {
                if let content = data
                {
                    do
                    {
                        let myJson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)
                            as AnyObject
                        print(myJson)
                    }
                    catch
                    {
                        
                    }
                }
            }
        }
        task.resume()
        
        switch(sweetness)
        {
        case(1):
            name += " with Hazelnut"
            break;
        case(2):
            name += " with Mocha"
            break;
        case(3):
            name += " with Caramel "
            break;
        case(4):
            name += " with Vanilla "
            break;
        case(5):
            name += " with White Mocha "
            break;
        default:
            break;
            
        }

        finalCoffLabel2.text = name
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
