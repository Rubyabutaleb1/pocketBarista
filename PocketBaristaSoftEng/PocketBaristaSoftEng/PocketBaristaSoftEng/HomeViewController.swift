//
//  ViewController.swift
//  PocketBaristaSoftEng
//
//  Created by Ruby Abutaleb on 4/18/18.
//  Copyright © 2018 CPSC362. All rights reserved.
//

import UIKit

//home view controller class
class HomeViewController: UIViewController {

    @IBOutlet weak var homeLogoImg: UIImageView!
    @IBAction func findMyDrinkBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "toFindDrinkView", sender: nil)
    }
    @IBAction func aboutUsBtn(_ sender: UIButton) {
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

