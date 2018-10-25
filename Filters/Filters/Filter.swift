//
//  Filter.swift
//  Filters
//
//  Created by Jonathan T. Miles on 10/25/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation
import CoreImage

@objc class Filter: NSObject {
    
    init(filterNamed name: String, sliders: [Slider]) {
        self.filter = CIFilter(name: name)!
        self.sliders = sliders
    }
    
    @objc dynamic var filter: CIFilter
    
    @objc dynamic var sliders: [Slider]
    // or maybe filter.inputKeys!
    
    
    @objc class Slider: NSObject {
        init(displayName: String, sliderMax: NSNumber, sliderMin: NSNumber, attributeDefault: NSNumber) {
            self.displayName = displayName
            self.sliderMax = sliderMax
            self.sliderMin = sliderMin
            self.attributeDefault = attributeDefault
        }
        
        @objc dynamic let displayName: String
        @objc dynamic let sliderMax: NSNumber
        @objc dynamic let sliderMin: NSNumber
        @objc dynamic let attributeDefault: NSNumber
    }
}
