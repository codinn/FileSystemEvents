//
//  AppDelegate.swift
//  InternalTester4
//
//  Created by Hoon H. on 2015/01/17.
//  Copyright (c) 2015 Eonil. All rights reserved.
//

import Cocoa
import EonilFileSystemEvents

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	@IBOutlet weak var window: NSWindow!
	
	let	s1		=	FileSystemEventMonitor(
		pathsToWatch: [("~/Documents" as NSString).expandingTildeInPath, ("~/Temp" as NSString).expandingTildeInPath],
		latency: 1,
		watchRoot: true,
		queue: DispatchQueue.main) { (events:[FileSystemEvent])->() in
			print(events)
		}
	
}

