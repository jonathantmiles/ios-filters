//
//  Filter.swift
//  Filters
//
//  Created by Jonathan T. Miles on 10/25/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Foundation
import CoreImage

class Filter: NSObject {
    
    init(filterNamed name: String, sliders: [Slider]) {
        self.filter = CIFilter(name: name)!
        self.sliders = sliders
    }
    
    var filter: CIFilter
    
    var sliders: [Slider]
    // or maybe filter.inputKeys!
    
    
    class Slider: NSObject {
        init(displayName: String, sliderMax: NSNumber, sliderMin: NSNumber, attributeDefault: NSNumber) {
            self.displayName = displayName
            self.sliderMax = sliderMax
            self.sliderMin = sliderMin
            self.attributeDefault = attributeDefault
        }
        
        let displayName: String
        let sliderMax: NSNumber
        let sliderMin: NSNumber
        let attributeDefault: NSNumber
    }
}
