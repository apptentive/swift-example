Swift Example
-------------

This repository contains an example project that illustrates how to integrate
the Apptentive iOS SDK into a Swift project using
[CocoaPods](https://cocoapods.org).

There are a few steps you will need to take in order to build and run the code,
which closely parallel the procedure to integrate with your own projects.

Start by cloning this repository somewhere on your machine and making sure
[CocoaPods is installed](https://guides.cocoapods.org/using/getting-started.html). 

### Installing ApptentiveConnect CocoaPod

1. In a terminal window, change directories to the root of the newly-cloned
   repository.
2. Type `pod install` to install the ApptentiveConnect CocoaPod.
3. Open the `SwiftExample.xcworkspace` file.

### Adding the Bridging Header

1. Expand the SwiftExample project in the Project Navigator, and then
   right-click the SwiftExample group and choose Add Files to “SwiftExample”…
2. Select the `SwiftExample-Bridging-Header.h` file (in the SwiftExample
   directory in the root of the repository) and add it.
3. Choose the SwiftExample project in the Project Navigator
4. Choose the SwiftExample target in the source list and switch to the Build
   Settings tab.
5. Under Swift Compiler - Code Generation, find the Objective-C Bridging Header
   setting and set it to the path of the bridging header (e.g.
   `$(SRCROOT)/SwiftExample/SwiftExample-Bridging-Header.h`).

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

You should now be ready to build and run your app.
