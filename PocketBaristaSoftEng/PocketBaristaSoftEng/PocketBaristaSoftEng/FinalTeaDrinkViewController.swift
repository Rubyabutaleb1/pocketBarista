    //
//  FinalTeaDrinkViewController.swift
//  PocketBaristaSoftEng
//
//  Created by Ruby Abutaleb on 5/9/18.
//  Copyright © 2018 CPSC362. All rights reserved.
//

import Foundation
import UIKit

class FinalTeaDrinkViewController: UIViewController{
    
    @IBOutlet weak var navyBlockImg: UIImageView!
    @IBOutlet weak var finalTeaLabel1: UILabel!
    @IBOutlet weak var drinkIconImg: UIImageView!
    @IBOutlet weak var finalTeaLabel2: UILabel!
    @IBAction func nextDrinkBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "anotherDrinkView", sender: nil)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let temp = teaDrink.getTemp()
        let caffeine = teaDrink.getCaff()
        let sweetness = teaDrink.getSweet()
        let dairy = teaDrink.getDairy()
        var name = "Iced Sweetened White Tea "
        
        let teaURL = "http://yorbalindasoftware.com/barista/tea?Temperature=" + String(temp) + "&Sweetness=" + String(sweetness) + "&Caffeine=" + String(caffeine) + "&Dairy=" + String(dairy)
        print(teaURL)
       
        let url = URL(string: teaURL)
        
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
        
            finalTeaLabel2.text = name
        
    
 
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

