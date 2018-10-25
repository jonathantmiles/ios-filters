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
        
        let brightnessSlider = Filter.Slider(displayName: "Brightness", sliderMax: 1, sliderMin: -1, attributeDefault: 0)
        let contrastSlider = Filter.Slider(displayName: "Contrast", sliderMax: 4, sliderMin: 0.25, attributeDefault: 1)
        let saturationSlider = Filter.Slider(displayName: "Saturation", sliderMax: 2, sliderMin: 0, attributeDefault: 1)
        let sliders = [brightnessSlider, contrastSlider, saturationSlider]
        
        filters = [Filter(filterNamed: "CIColorControls", sliders: sliders)]
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
    
    // MARK: - Properties
    
    
    @objc dynamic var filters: [Filter]?
    
    @IBOutlet weak var imageView: NSImageView!
    
}

