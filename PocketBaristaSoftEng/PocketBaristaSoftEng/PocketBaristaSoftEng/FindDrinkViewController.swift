//
//  FindDrinkViewController.swift
//  PocketBaristaSoftEng
//
//  Created by Ruby Abutaleb on 4/18/18.
//  Copyright © 2018 CPSC362. All rights reserved.
//

import UIKit

//find drink view controller class
class FindDrinkViewController: UIViewController {
    
    @IBOutlet weak var navyBlockImg: UIImageView!
    @IBOutlet weak var findMyDrinkLabel: UILabel!
    @IBOutlet weak var coffeeOrTeaLabel: UILabel!
    @IBOutlet weak var navBar: UINavigationBar!
    @IBAction func prevBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toHomeView", sender: nil)
    }
    @IBAction func homeBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toHomeView", sender: nil)
    }
    @IBAction func coffeeBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "toCoffeeView", sender: nil)
    }
    @IBAction func teaBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "toTeaView", sender: nil)
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

