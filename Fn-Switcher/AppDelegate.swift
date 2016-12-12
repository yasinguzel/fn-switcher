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
    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength) //created Status Item


    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared().terminate(self) //When user quit clicked,application close.
    }

    @IBAction func switchClicked(_ sender: Any) {
        let task = Process() //Created process.
        task.launchPath = "/usr/bin/osascript" //Call necessary script
        let filePath = Bundle.main.path(forResource:"Fn-Switcher", ofType: "scpt") //Find AppleScript in the project folder.
        task.arguments = [filePath!]
        task.launch() //Launch the AppleScript file
    }
    func applicationDidFinishLaunching(_ aNotification: Notification) {

        let icon = NSImage(named: "statusIcon")
        icon?.isTemplate = true
        statusItem.image = icon
        statusItem.menu = statusMenu
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
    }
    
}

