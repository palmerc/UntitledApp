# A Hello World of Sorts - Untitled.app

What is special about an iOS app? This is a project that demonstrates building a minimal iOS app without an Xcode project. 

This project contains a (extremely) basic app for iPhone Simulator. The basic idiom of an app is a folder with the `.app` extension containing an `Info.plist` and a binary compiled for the target. The Info.plist contains the display name, bundle identifier and binary name.

Once you've compiled the app, run it:

    xcrun simctl list
    xcrun simctl boot <UUID_OF_DEVICE>
    open $(xcode-select --print-path)/Applications/Simulator.app/
    xcrun simctl install <UUID_OF_DEVICE> ./Untitled.app
    xcrun simctl launch --console <UUID_OF_DEVICE> com.cameronpalmer.Untitled
