//
//  timerIC.swift
//  WatchAppTemp
//
//  Created by Mohsin on 06/04/2015.
//  Copyright (c) 2015 PanaCloud. All rights reserved.
//

import WatchKit
import Foundation


class timerIC: WKInterfaceController {

    @IBOutlet weak var lblTop: WKInterfaceLabel!
    @IBOutlet weak var timer: WKInterfaceTimer!
    @IBOutlet weak var btnStartAndStop: WKInterfaceButton!
    
    
    var isTimerRuning = false

    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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


    @IBAction func startAndStop() {
        if !self.isTimerRuning {
            self.timer.start()
            
            self.isTimerRuning = true
            self.btnStartAndStop.setTitle("Stop")
        }
        else {
            self.timer.stop()
            self.isTimerRuning = false
            self.btnStartAndStop.setTitle("Start")
        }
        
    }

}
