//
//  AppDelegate.swift
//  Fn-Switcher
//
//  Created by Yasin GÜZEL on 10.12.2016.
//  Copyright © 2016 Yasin GÜZEL. All rights reserved.
//

import Cocoa


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var statusMenu: NSMenu!

    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared().terminate(self)
    }
    
    @IBAction func switchClicked(_ sender: Any) {

        let task = Process()
        task.launchPath = "/usr/bin/osascript"
        task.arguments = ["/Users/yasinguzel/Documents/Fn-Switcher/Fn-Switcher.scpt"]
        ///Users/yasinguzel/Documents/Fn-Switcher
        
        task.launch()
        

    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        let icon = NSImage(named: "statusIcon")
        statusItem.image = icon
        statusItem.menu = statusMenu
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

