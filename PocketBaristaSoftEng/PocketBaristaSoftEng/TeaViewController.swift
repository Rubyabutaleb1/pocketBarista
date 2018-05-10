//
//  TeaViewController.swift
//  PocketBaristaSoftEng
//
//  Created by Ruby Abutaleb on 4/20/18.
//  Copyright © 2018 CPSC362. All rights reserved.
//

import UIKit

//tea class
class Tea{
    var caffLevel = 0
    var sweetLevel = 0
    var dairyLevel = 0
    var drinkTemp = String()
    
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
let teaDrink = Tea()


//hot or iced tea view controller class
class TeaViewController: UIViewController {
    
    @IBOutlet weak var navyBlockImg: UIImageView!
    @IBAction func prevBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toFindMyDrinkView", sender: nil)
    }
    @IBOutlet weak var navBar: UINavigationBar!
    @IBAction func homeBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toHomeView", sender: nil)
    }
    
    @IBAction func icedTea(_ sender: Any)
    {
        teaDrink.drinkTemp = ICED
        performSegue(withIdentifier: "toSweetView", sender: self)
    }
    
    @IBAction func hotTea(_ sender: Any)
    {
        teaDrink.drinkTemp = HOT
        performSegue(withIdentifier: "toSweetView", sender: self)
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

//tea sweet view controller class
class TeaSweetViewController: UIViewController {
    
    @IBOutlet weak var navyBlockImg: UIImageView!
    @IBOutlet weak var sweetLabel1: UILabel!
    @IBOutlet weak var sweetLabel2: UILabel!
    @IBOutlet weak var sweetScaleLabel: UILabel!
    @IBOutlet weak var navBar: UINavigationBar!
    
    @IBAction func prevBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toTeaView", sender: nil)
    }
    @IBAction func homeBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toHomeView", sender: nil)
    }
    
    
    @IBAction func zeroSweet(_ sender: Any)
    {
        teaDrink.sweetLevel = 0
        performSegue(withIdentifier: "toCaffView", sender: self)
    }
    
    
    @IBAction func oneSweet(_ sender: Any)
    {
        teaDrink.sweetLevel = 1
        performSegue(withIdentifier: "toCaffView", sender: self)
    }
    
    
    @IBAction func twoSweet(_ sender: Any)
    {
        teaDrink.sweetLevel = 2
        performSegue(withIdentifier: "toCaffView", sender: self)
    }
    
    
    @IBAction func threeSweet(_ sender: Any)
    {
        teaDrink.sweetLevel = 3
        performSegue(withIdentifier: "toCaffView", sender: self)
    }
    
    
    @IBAction func fourSweet(_ sender: Any)
    {
        teaDrink.sweetLevel = 4
        performSegue(withIdentifier: "toCaffView", sender: self)
    }
    
    
    @IBAction func fiveSweet(_ sender: Any)
    {
        teaDrink.sweetLevel = 5
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

//tea caff view controller class
class TeaCaffViewController: UIViewController {
    
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
        teaDrink.caffLevel = 0
        performSegue(withIdentifier: "toDairyView", sender: self)
    }
    
    @IBAction func oneCaf(_ sender: Any)
    {
        teaDrink.caffLevel = 1
        performSegue(withIdentifier: "toDairyView", sender: self)
    }
    
    @IBAction func twoCaf(_ sender: Any)
    {
        teaDrink.caffLevel = 2
        performSegue(withIdentifier: "toDairyView", sender: self)
    }
    
    @IBAction func threeCaf(_ sender: Any)
    {
        teaDrink.caffLevel = 3
        performSegue(withIdentifier: "toDairyView", sender: self)
    }
    
    @IBAction func fourCaf(_ sender: Any)
    {
        teaDrink.caffLevel = 4
        performSegue(withIdentifier: "toDairyView", sender: self)
    }
    
    @IBAction func fiveCaf(_ sender: Any)
    {
        teaDrink.caffLevel = 5
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

//tea dairy view controller
class TeaDairyViewController: UIViewController {
    
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
        teaDrink.dairyLevel = 0
        performSegue(withIdentifier: "toDrinkView", sender: self)
    }
    
    @IBAction func oneDairy(_ sender: Any)
    {
        teaDrink.dairyLevel = 1
        performSegue(withIdentifier: "toDrinkView", sender: self)
    }
    
    @IBAction func twoDairy(_ sender: Any)
    {
        teaDrink.dairyLevel = 2
        performSegue(withIdentifier: "toDrinkView", sender: self)
    }
    
    @IBAction func threeDairy(_ sender: Any)
    {
        teaDrink.dairyLevel = 3
        performSegue(withIdentifier: "toDrinkView", sender: self)
    }
    
    @IBAction func fourDairy(_ sender: Any)
    {
        teaDrink.dairyLevel = 4
        performSegue(withIdentifier: "toDrinkView", sender: self)
    }
    
    @IBAction func fiveDairy(_ sender: Any)
    {
        teaDrink.dairyLevel = 5
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

