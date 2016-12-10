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

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        statusItem.title = "Fn-Switcher"
        statusItem.menu = statusMenu
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

