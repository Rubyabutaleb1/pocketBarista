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
    @IBAction func nextDrinkBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "anotherDrinkView", sender: nil)
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
