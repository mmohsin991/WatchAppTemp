//
//  InterfaceController.swift
//  WatchAppTemp WatchKit Extension
//
//  Created by Mohsin on 04/04/2015.
//  Copyright (c) 2015 PanaCloud. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var lblTop: WKInterfaceLabel!
    @IBOutlet weak var timer: WKInterfaceTimer!
    @IBOutlet weak var switch1: WKInterfaceSwitch!
    @IBOutlet weak var imgTop: WKInterfaceImage!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    //    self.imgTop.setImage(UIImage(named: "flowerE"))

    
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func switchAction(value: Bool) {
        println(value)

        value == true ? println("On") : println("Off")

        self.imgTop.setImage(UIImage(named: "flower2E"))
        
    }

}
