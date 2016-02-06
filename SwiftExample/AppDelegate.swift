//
//  AppDelegate.swift
//  SwiftExample
//
//  Created by Frank Schmitt on 4/13/15.
//  Copyright (c) 2015 Apptentive. All rights reserved.
//

import UIKit
import Apptentive

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
	
        ATConnect.sharedConnection().apiKey = "YourAPIKey"
        ATConnect.sharedConnection().appID = "YourAppID"
		        
        return true
    }
}

