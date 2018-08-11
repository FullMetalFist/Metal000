//
//  ViewController.swift
//  Metal000
//
//  Created by Michael Vilabrera on 8/11/18.
//  Copyright © 2018 Michael Vilabrera. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var label: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let devices = MTLCopyAllDevices()
        guard let _ = devices.first else {
            fatalError("Your GPU does not support Metal")
        }
        
        label.stringValue = "Your system has the following GPU(s): \n"
        for device in devices {
            label.stringValue += "\(device.name)\n"
        }
    }

    override var representedObject: Any? {
        didSet {
        
            print("this is new")
        }
    }
}

