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


    @IBOutlet weak var imgTop: WKInterfaceImage!
    
    
    
    var imageNumber = 1;
    var arrImages : [String] = [ "flower2", "flower"]
    
    
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


    @IBAction func changeImage() {
        

        if self.imageNumber == 1 {
          //  WKInterfaceDevice.currentDevice().removeAllCachedImages()
            self.imgTop.setImageNamed(self.arrImages[0])
            self.imageNumber = 2
        }
        else if  self.imageNumber == 2 {
          //  WKInterfaceDevice.currentDevice().removeAllCachedImages()
            self.imgTop.setImageNamed(self.arrImages[1])
            self.imageNumber = 1

        }
        
        
    }
    
    @IBAction func addMenuItem() {
        println("Mohsin")
    }
    
    

    
}
