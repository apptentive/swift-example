//
//  ViewController.swift
//  SwiftExample
//
//  Created by Frank Schmitt on 4/13/15.
//  Copyright (c) 2015 Apptentive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageCenterButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "messageCenterUnreadCountChanged:", name:ATMessageCenterUnreadCountChangedNotification, object: nil)
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    func messageCenterUnreadCountChanged(notification: NSNotification) {
        if let notificationCount = notification.userInfo?["count"] as? Int {
            self.messageCenterButton.setTitle("Message Center (\(notificationCount))", forState: .Normal)
        }
    }

    @IBAction func engageEvent1(sender: AnyObject) {
        ATConnect.sharedConnection().engage("Event_1", fromViewController: self)
    }

    @IBAction func showMessageCenter(sender: AnyObject) {
        ATConnect.sharedConnection().presentMessageCenterFromViewController(self)
    }
}
