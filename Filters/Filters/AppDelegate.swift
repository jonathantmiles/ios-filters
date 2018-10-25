//
//  AppDelegate.swift
//  Filters
//
//  Created by Jonathan T. Miles on 10/25/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    @IBAction func openDocument(_ sender: Any?) {
        let panel = NSOpenPanel(contentRect: NSRect(x: 300.0, y: 200.0, width: 300.0, height: 200.0), styleMask: [.closable, .fullScreen, .miniaturizable], backing: .buffered, defer: <#T##Bool#>)
    }
    

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

