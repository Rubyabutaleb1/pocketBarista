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
    var drinkTemp: String?
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
    @IBAction func icedTeaBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toSweetView", sender: nil)
    }
    @IBAction func hotTeaBtn(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toSweetView", sender: nil)
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
    
    //buttons
    @IBAction func teaSweetZeroBtn(_ sender: UIBarButtonItem) {
        teaDrink.sweetLevel = 0
        performSegue(withIdentifier: "toCaffView", sender: nil)
    }
    @IBAction func teaSweetOneBtn(_ sender: UIBarButtonItem) {
        teaDrink.sweetLevel = 1
        performSegue(withIdentifier: "toCaffView", sender: nil)
    }
    @IBAction func teaSweetTwoBtn(_ sender: UIBarButtonItem) {
        teaDrink.sweetLevel = 2
        performSegue(withIdentifier: "toCaffView", sender: nil)
    }
    @IBAction func teaSweetThreeBtn(_ sender: UIBarButtonItem) {
        teaDrink.sweetLevel = 3
        performSegue(withIdentifier: "toCaffView", sender: nil)
    }
    @IBAction func teaSweetFourBtn(_ sender: UIBarButtonItem) {
        teaDrink.sweetLevel = 4
        performSegue(withIdentifier: "toCaffView", sender: nil)
    }
    @IBAction func teaSweetFiveBtn(_ sender: UIBarButtonItem) {
        teaDrink.sweetLevel = 5
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
    //buttons
    @IBAction func teaCaffZeroBtn(_ sender: UIBarButtonItem) {
        teaDrink.caffLevel = 0
        performSegue(withIdentifier: "toDairyView", sender: nil)
    }
    @IBAction func teaCaffOneBtn(_ sender: UIBarButtonItem) {
        teaDrink.caffLevel = 1
        performSegue(withIdentifier: "toDairyView", sender: nil)
    }
    @IBAction func teaCaffTwoBtn(_ sender: UIBarButtonItem) {
        teaDrink.caffLevel = 2
        performSegue(withIdentifier: "toDairyView", sender: nil)
    }
    @IBAction func teaCaffThreeBtn(_ sender: UIBarButtonItem) {
        teaDrink.caffLevel = 3
        performSegue(withIdentifier: "toDairyView", sender: nil)
    }
    @IBAction func teaCaffFourBtn(_ sender: UIBarButtonItem) {
        teaDrink.caffLevel = 4
        performSegue(withIdentifier: "toDairyView", sender: nil)
    }
    @IBAction func teaCaffFiveBtn(_ sender: UIBarButtonItem) {
        teaDrink.caffLevel = 5
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
    //buttons
    @IBAction func teaDairyZeroBtn(_ sender: UIBarButtonItem) {
        teaDrink.dairyLevel = 0
        performSegue(withIdentifier: "toDrinkView", sender: nil)
    }
    @IBAction func teaDairyOneBtn(_ sender: UIBarButtonItem) {
        teaDrink.dairyLevel = 1
        performSegue(withIdentifier: "toDrinkView", sender: nil)
    }
    @IBAction func teaDairyTwoBtn(_ sender: UIBarButtonItem) {
        teaDrink.dairyLevel = 2
        performSegue(withIdentifier: "toDrinkView", sender: nil)
    }
    @IBAction func teaDairyThreeBtn(_ sender: UIBarButtonItem) {
        teaDrink.dairyLevel = 3
        performSegue(withIdentifier: "toDrinkView", sender: nil)
    }
    @IBAction func teaDairyFourBtn(_ sender: UIBarButtonItem) {
        teaDrink.dairyLevel = 4
        performSegue(withIdentifier: "toDrinkView", sender: nil)
    }
    @IBAction func teaDairyFiveBtn(_ sender: UIBarButtonItem) {
        teaDrink.dairyLevel = 5
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

