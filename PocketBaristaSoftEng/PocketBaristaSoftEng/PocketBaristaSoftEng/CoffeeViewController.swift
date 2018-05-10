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
    var drinkTemp = String()
    var drinkName = String()
    
    //setCaff Function
    public func setCaff(caffVar: Int)
    {
        caffLevel = caffVar
    }
    
    //setSweet Function
    public func setSweet(sweetVar: Int)
    {
        sweetLevel = sweetVar
    }
    
    //setDairy Function
    public func setDairy(dairyVar: Int)
    {
        dairyLevel = dairyVar
    }
    
    //setTemp Function
    public func setTemp(tempVar: String)
    {
        drinkTemp = tempVar
    }
    
    //getCaff Function
    public func getCaff() -> Int
    {
        return caffLevel
    }
    
    //getSweet Function
    public func getSweet() -> Int
    {
        return sweetLevel
    }
    //getDairy Function
    
    public func getDairy() -> Int
    {
        return dairyLevel
    }
    
    //getTemp Function
    public func getTemp() -> String
    {
        return drinkTemp
    }
}

let coffDrink = Coffee()
let HOT = "Hot"
let ICED = "Ice"


//hot or iced coffee view controller class
class CoffeeViewController: UIViewController {
    
    @IBOutlet weak var navyBlockImg: UIImageView!
    @IBOutlet weak var navBar: UINavigationBar!
    
    @IBAction func prevBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toFindMyDrinkView", sender: nil)
    }
    
    //Iced
    @IBAction func iced(_ sender: Any)
    {
        coffDrink.drinkTemp = ICED
        performSegue(withIdentifier: "toSweetView", sender: self)
    }
    //Hot
    @IBAction func hot(_ sender: Any)
    {
        coffDrink.drinkTemp = HOT
        performSegue(withIdentifier: "toSweetView", sender: self)
    }
    
    
    //Home Button
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
    
    
    @IBAction func prevBtn(_ sender: UIBarButtonItem)
    {
        performSegue(withIdentifier: "toCoffeeView", sender: nil)
    }
    @IBAction func homeBtn(_ sender: UIBarButtonItem)
    {
        performSegue(withIdentifier: "toHomeView", sender: nil)
    }
    
    
    @IBAction func zeroSweet(_ sender: Any)
    {
        coffDrink.sweetLevel = 0
        performSegue(withIdentifier: "toCaffView", sender: self)
    }
    @IBAction func oneSweet(_ sender: Any)
    {
        coffDrink.sweetLevel = 1
        performSegue(withIdentifier: "toCaffView", sender: self)
    }
    @IBAction func twoSweet(_ sender: Any)
    {
        coffDrink.sweetLevel = 2
        performSegue(withIdentifier: "toCaffView", sender: self)
    }
    @IBAction func threeSweet(_ sender: Any)
    {
        coffDrink.sweetLevel = 3
        performSegue(withIdentifier: "toCaffView", sender: self)
    }
  
    @IBAction func fourSweet(_ sender: Any)
    {
        coffDrink.sweetLevel = 4
        performSegue(withIdentifier: "toCaffView", sender: self)
    }
    
    @IBAction func fiveSweet(_ sender: Any)
    {
        coffDrink.sweetLevel = 5
        performSegue(withIdentifier: "toCaffView", sender: self)
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
    
    
    @IBAction func zeroCaf(_ sender: Any)
    {
        coffDrink.caffLevel = 0
        performSegue(withIdentifier: "toDairyView", sender: self)
    }
    @IBAction func oneCaf(_ sender: Any)
    {
        coffDrink.caffLevel = 1
        performSegue(withIdentifier: "toDairyView", sender: self)
    }
    @IBAction func twoCaf(_ sender: Any)
    {
        coffDrink.caffLevel = 2
        performSegue(withIdentifier: "toDairyView", sender: self)
    }
    @IBAction func threeCaf(_ sender: Any)
    {
        coffDrink.caffLevel = 3
        performSegue(withIdentifier: "toDairyView", sender: self)
    }
    @IBAction func fourCaf(_ sender: Any)
    {
        coffDrink.caffLevel = 4
        performSegue(withIdentifier: "toDairyView", sender: self)
    }
    @IBAction func fiveCaf(_ sender: Any)
    {
        coffDrink.caffLevel = 5
        performSegue(withIdentifier: "toDairyView", sender: self)
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
    
    @IBAction func zeroDairy(_ sender: Any)
    {
        coffDrink.dairyLevel = 0
        performSegue(withIdentifier: "toDrinkView", sender: self)
    }
    @IBAction func oneDairy(_ sender: Any)
    {
        coffDrink.dairyLevel = 1
        performSegue(withIdentifier: "toDrinkView", sender: self)
    }
    @IBAction func twoDairy(_ sender: Any)
    {
        coffDrink.dairyLevel = 1
        performSegue(withIdentifier: "toDrinkView", sender: self)
    }
    @IBAction func threeDairy(_ sender: Any)
    {
        coffDrink.dairyLevel = 2
        performSegue(withIdentifier: "toDrinkView", sender: self)
    }
    @IBAction func fourDairy(_ sender: Any)
    {
        coffDrink.dairyLevel = 3
        performSegue(withIdentifier: "toDrinkView", sender: self)
    }
    @IBAction func fiveDairy(_ sender: Any)
    {
        coffDrink.dairyLevel = 3
        performSegue(withIdentifier: "toDrinkView", sender: self)
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




