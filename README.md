# MessagePopUp
![SPM](https://img.shields.io/badge/SPM-supported-red)
![Platforms](https://img.shields.io/badge/platform-iOS%20-blue)
![Swift 5](https://img.shields.io/badge/Swift-5-orange?logo=swift) 
![iOS 17+](https://img.shields.io/badge/iOS-17.0%2B-blue?logo=apple)
![Xcode 15.0+](https://img.shields.io/badge/Xcode-15.0%2B-blue?logo=apple)


**MessagePopUp** is a lightweight SwiftUI package providing a simple programming API for displaying customizable pop-up messages at the bottom of the screen. It features customizable styles and auto-dismiss functionality, designed to enhance your app's user experience.

## Purpose

A simple package designed to gain familiarity with Swift package creation while enhancing code modularity and reusability.

## Features
- Show success or error messages with a customizable background color.
- Automatically dismiss messages after a specified duration.
- Simple API with a reusable SwiftUI modifier.
- Lightweight and modular.

## Instalation

### Swift Package Manager

MessagePopUp is available through
[Swift Package Manager](https://github.com/swiftlang/swift-package-manager).
#### Xcode

Select `File > Add Packages... > Add Package Dependency...,`
https://github.com/egkelados/BottomMessagePopUp.git

## Usage

Create a @State variable to manage the pop-up message :

`@State private var popUpMessage: MessageOptions? = nil`

Wrap your SwiftUI content with the `.popUpMessage()` modifier and trigger the message with a MessageOptions instance.

### Customization



The MessageOptions struct allows you to customize:
```
message: The text displayed in the pop-up.

backgroundColor: The background color of the pop-up (default: .red).

duration: The duration before the pop-up automatically dismisses (default: 1.0 seconds).

Example:

MessageOptions(
    message: "Your action was successful!",
    backgroundColor: .green,
    duration: 2.5
)
```



## Future Enhancements
- Implement unit and UI tests.
- Add visual artifacts for success/error states.
- Include screenshots to demonstrate integration and usage.
- Update the README documentation.




