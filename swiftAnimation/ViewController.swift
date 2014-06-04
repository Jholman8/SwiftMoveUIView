//
//  ViewController.swift
//  swiftAnimation
//
//  Created by Jacob Holman on 6/3/14.
//  Copyright (c) 2014 Jacob Holman. All rights reserved.
//

import UIKit
import QuartzCore
class ViewController: UIViewController {
    
    @IBOutlet var boxView : UIView
    
    
    class Vehicle{
        var numOfWheels = 0
        var cost = 1000
        var description : String{
        return "\(numOfWheels) wheels"
        }
    }
    class Car : Vehicle{
        init() {
          super.init()
          numOfWheels = 4
          cost = 3000
                     }
        override var description : String{
        return "\(super.description) \(cost) dollars"
        }
        func addToCost(amount:Int){
            cost += amount
        }

    }
    class Truck : Car{
        init() {
            super.init()
            cost = 5000
        }
        override var description : String{
        return "Wow this truck cost \(cost) dollars"
        }
        var speed = 60
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //just messing around with classes
        var car = Truck()
        car.addToCost(222)
        car.addToCost(-1)
        println(car.description)
        
        car.speed = 69
         println("\(car.speed) MPH")
        car.addToCost(-500)
        println("Would you take \(car.cost) for the truck")
        println(countElements(car.description))
        car.addToCost(400)
    }
    //animations!!! took forever to guess this syntax!!!
    
   @IBAction func buttonTappedUp(AnyObject) {
    UIView.animateWithDuration(2, animations: {() -> Void in
        self.boxView.frame.offset(dx: 0, dy: -100)
        self.boxView.backgroundColor = UIColor.blackColor()
        })
    }
    @IBAction func buttonTappedDown(AnyObject) {
        UIView.animateWithDuration(3, animations: {() -> Void in
            self.boxView.frame.offset(dx: 0, dy: +100)
            self.boxView.backgroundColor = UIColor.blueColor()
            })
    }
    @IBAction func buttonTappedLeft(AnyObject) {
        UIView.animateWithDuration(3, animations: {() -> Void in
            self.boxView.frame.offset(dx: -100, dy: 0)
            self.boxView.backgroundColor = UIColor.redColor()
            })
        
    }
    @IBAction func buttonTappedRight(AnyObject) {
        
        
        UIView.animateWithDuration(3, animations: {() -> Void in
           self.boxView.frame.offset(dx: +100, dy: 0)
           self.boxView.backgroundColor = UIColor.cyanColor()
        })
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

