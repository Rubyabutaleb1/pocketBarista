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
        
        var caffeine = coffDrink.getCaff()
        var temp = coffDrink.getTemp()
        var dairy = coffDrink.getDairy()
        
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

        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
