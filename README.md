Swift Example
-------------

This repository contains an example project that illustrates how to integrate
the Apptentive iOS SDK into a Swift project using
[CocoaPods](https://cocoapods.org).

There are a few steps you will need to take in order to build and run the code,
which closely parallel the procedure to integrate with your own projects.

Start by cloning this repository somewhere on your machine and making sure
[CocoaPods is installed](https://guides.cocoapods.org/using/getting-started.html).

### Installing the apptentive-ios CocoaPod

1. In a terminal window, change directories to the root of the newly-cloned
   repository.
2. Type `pod install` to install the apptentive-ios CocoaPod.
3. Open the SwiftExample.xcworkspace file.

### Importing Apptentive

Because the included podfile uses the `use_frameworks!` directive, all
that you need to do is add `import Apptentive` at the top level of any
Swift files in which you would like to call Apptentive SDK methods.

### Integrating the Apptentive SDK

1. Log into https://be.apptentive.com and choose the app you want to test with
   (or create one). Then click the Settings tab and click API & Development in
   the sidebar. Copy your API key.
2. In the AppDelegate.swift file, paste your API key in place of the
   `YourAPIKey` string.
3. If your app is configured in iTunes Connect (or is live on the store), you
   can add your app's iTunes ID in place of the `YourAppID` string.
4. In the ViewController.swift file, you can replace the `Event_` string with
   an event name of your choosing.

You should now be ready to build and run your app. You can tap the Engage button
to send your event to the Apptentive API, or open the Message Center by tapping
the Message Center button. The number represents the unread message count, and
will be updated as messages from the app are replied to on the web app. 
