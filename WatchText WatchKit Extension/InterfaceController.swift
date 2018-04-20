//
//  InterfaceController.swift
//  WatchText WatchKit Extension
//
//  Created by Steven Lipton on 9/21/16.
//  Copyright © 2016 Steven Lipton. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var label: WKInterfaceLabel!
    @IBOutlet var image: WKInterfaceImage!
    
    
    @IBAction func addText() {
   let suggestions = ["Yes","No","Later, Dude"]
        presentTextInputController(withSuggestions: suggestions, allowedInputMode: .allowEmoji) { (results) in
            guard let responses = results else {
                self.label.setText("Cancelled")
                return
            }
            if let text = responses[0] as? String{
                self.label.setText(text)
            }
        }
        
        
        
    
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
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

}
