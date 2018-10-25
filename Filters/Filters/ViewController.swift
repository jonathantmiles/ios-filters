//
//  ViewController.swift
//  Filters
//
//  Created by Jonathan T. Miles on 10/25/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func openDocument(_ sender: Any?) {
        let panel = NSOpenPanel(contentRect: NSRect(x: 300.0, y: 200.0, width: 300.0, height: 200.0), styleMask: [.closable, .fullScreen, .miniaturizable], backing: .buffered, defer: false)
        panel.canChooseFiles = true
        
        panel.begin { (response) in
            if response == NSApplication.ModalResponse.OK {
                let openedImageFilePath = panel.urls.first!
                
                let image = NSImage(byReferencing: openedImageFilePath)
                DispatchQueue.main.async {
                    self.imageView.image = image
                }
            }
        }
    }
    
    @IBOutlet weak var imageView: NSImageView!
    
}

