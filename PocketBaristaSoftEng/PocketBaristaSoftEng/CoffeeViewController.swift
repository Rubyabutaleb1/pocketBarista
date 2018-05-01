//
//  CoffeeViewController.swift
//  PocketBaristaSoftEng
//
//  Created by Ruby Abutaleb on 4/18/18.
//  Copyright © 2018 CPSC362. All rights reserved.
//

import Foundation
import UIKit

//coffee class
class Coffee{
    var caffLevel = 0
    var sweetLevel = 0
    var dairyLevel = 0
    var drinkTemp: String?
}
let coffDrink = Coffee()


//hot or iced coffee view controller class
class CoffeeViewController: UIViewController {
    
    @IBOutlet weak var navyBlockImg: UIImageView!
    @IBOutlet weak var navBar: UINavigationBar!
    
    @IBAction func prevBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toFindMyDrinkView", sender: nil)
    }
    
    //sets coffee temp as iced
    @IBAction func icedCoffeeBtn(_ sender: UIBarButtonItem) {
        coffDrink.drinkTemp = "iced"
        performSegue(withIdentifier: "toSweetView", sender: nil)
    }
    //sets coffee temp as hot
    @IBAction func hotCoffeeBtn(_ sender: UIBarButtonItem) {
        coffDrink.drinkTemp = "hot"
        performSegue(withIdentifier: "toSweetView", sender: nil)
    }
    @IBAction func homeBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toHomeView", sender: nil)
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

//coffee sweet view controller class
class CoffeeSweetViewController: UIViewController {
    
    @IBOutlet weak var navyBlockImg: UIImageView!
    @IBOutlet weak var sweetLabel1: UILabel!
    @IBOutlet weak var sweetLabel2: UILabel!
    @IBOutlet weak var sweetScaleLabel: UILabel!
    @IBOutlet weak var navBar: UINavigationBar!
    @IBAction func prevBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toCoffeeView", sender: nil)
    }
    @IBAction func homeBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toHomeView", sender: nil)
    }
    @IBAction func coffSweetZeroBtn(_ sender: UIBarButtonItem) {
        coffDrink.sweetLevel = 0
        performSegue(withIdentifier: "toCaffView", sender: nil)
    }
    @IBAction func coffSweetOneBtn(_ sender: UIBarButtonItem) {
        coffDrink.sweetLevel = 1
        performSegue(withIdentifier: "toCaffView", sender: nil)
    }
    @IBAction func coffSweetTwoBtn(_ sender: UIBarButtonItem) {
        coffDrink.sweetLevel = 2
        performSegue(withIdentifier: "toCaffView", sender: nil)
    }
    @IBAction func coffSweetThreeBtn(_ sender: UIBarButtonItem) {
        coffDrink.sweetLevel = 3
        performSegue(withIdentifier: "toCaffView", sender: nil)
    }
    
    @IBAction func coffSweetFourBtn(_ sender: UIBarButtonItem) {
        coffDrink.sweetLevel = 4
        performSegue(withIdentifier: "toCaffView", sender: nil)
    }
    @IBAction func coffSweetFiveBtn(_ sender: UIBarButtonItem) {
        coffDrink.sweetLevel = 5
        performSegue(withIdentifier: "toCaffView", sender: nil)
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

//coffee caff view controller
class CoffeeCaffViewController: UIViewController {
    
    @IBOutlet weak var navyBlockImg: UIImageView!
    @IBOutlet weak var caffLabel1: UILabel!
    @IBOutlet weak var caffLabel2: UILabel!
    @IBOutlet weak var caffScale: UILabel!
    @IBOutlet weak var navBar: UINavigationBar!
    
    @IBAction func prevBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toSweetView", sender: nil)
    }
    @IBAction func homeBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toHomeView", sender: nil)
    }
    //buttons
    @IBAction func coffeeCaffZeroBtn(_ sender: UIBarButtonItem) {
        coffDrink.sweetLevel = 0
        performSegue(withIdentifier: "toDairyView", sender: nil)
    }
    @IBAction func coffeeCaffOneBtn(_ sender: UIBarButtonItem) {
        coffDrink.sweetLevel = 1
        performSegue(withIdentifier: "toDairyView", sender: nil)
    }
    @IBAction func coffeeCaffTwoBtn(_ sender: UIBarButtonItem) {
        coffDrink.sweetLevel = 2
        performSegue(withIdentifier: "toDairyView", sender: nil)
    }
    @IBAction func coffeeCaffThreeBtn(_ sender: UIBarButtonItem) {
        coffDrink.sweetLevel = 3
        performSegue(withIdentifier: "toDairyView", sender: nil)
    }
    @IBAction func coffeeCaffFourBtn(_ sender: UIBarButtonItem) {
        coffDrink.sweetLevel = 4
        performSegue(withIdentifier: "toDairyView", sender: nil)
    }
    @IBAction func coffeeCaffFiveBtn(_ sender: UIBarButtonItem) {
        coffDrink.sweetLevel = 5
        performSegue(withIdentifier: "toDairyView", sender: nil)
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

//coffee dairy view controller
class CoffeeDairyViewController: UIViewController {
    
    @IBOutlet weak var navyBlockImg: UIImageView!
    @IBOutlet weak var dairyLabel1: UILabel!
    @IBOutlet weak var dairyLabel2: UILabel!
    @IBOutlet weak var dairyScale: UILabel!
    @IBOutlet weak var navBar: UINavigationBar!
    
    @IBAction func prevBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toCaffView", sender: nil)
    }
    @IBAction func homeBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toHomeView", sender: nil)
    }
    //buttons
    @IBAction func coffeeDairyZeroBtn(_ sender: UIBarButtonItem) {
        coffDrink.dairyLevel = 0
        performSegue(withIdentifier: "toDrinkView", sender: nil)
    }
    @IBAction func coffeeDairyOneBtn(_ sender: UIBarButtonItem) {
        coffDrink.dairyLevel = 1
        performSegue(withIdentifier: "toDrinkView", sender: nil)
    }
    @IBAction func coffeeDairyTwoBtn(_ sender: UIBarButtonItem) {
        coffDrink.dairyLevel = 2
        performSegue(withIdentifier: "toDrinkView", sender: nil)
    }
    @IBAction func coffeeDairyThreeBtn(_ sender: UIBarButtonItem) {
        coffDrink.dairyLevel = 3
        performSegue(withIdentifier: "toDrinkView", sender: nil)
    }
    @IBAction func coffeeDairyFourBtn(_ sender: UIBarButtonItem) {
        coffDrink.dairyLevel = 4
        performSegue(withIdentifier: "toDrinkView", sender: nil)
    }
    @IBAction func coffeeDairyFiveBtn(_ sender: UIBarButtonItem) {
        coffDrink.dairyLevel = 5
        performSegue(withIdentifier: "toDrinkView", sender: nil)
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

