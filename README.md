# NoveFeatherIcons

[![Version](https://img.shields.io/cocoapods/v/NoveFeatherIcons.svg?style=flat)](https://cocoapods.org/pods/NoveFeatherIcons) [![License](https://img.shields.io/cocoapods/l/NoveFeatherIcons.svg?style=flat)](https://cocoapods.org/pods/NoveFeatherIcons) [![Platform](https://img.shields.io/cocoapods/p/NoveFeatherIcons.svg?style=flat)](https://cocoapods.org/pods/NoveFeatherIcons)

Swift library for [Feather](https://feathericons.com/).

For more information about Feather icons pack, please refer to their [README](https://github.com/feathericons/feather).


## Installation

NoveFeatherIcons is available through [CocoaPod](https://cocoapods.org).

To install it, simply add the following line to your Podfile:

```
pod "NoveFeatherIcons", "~> 1.0"
```

## Usage

### Get an UIImage programmatically

You can get an UIImage containing the desired icon using one of the following functions:

```swift
import NoveFeatherIcons

let iconFromEnum = Feather.getIcon(.feather) // Using an enum
let iconFromString = Feather.getIcon("feather") // Using the icon’s name
```

If the icon is not found, those functions will return `nil`.

You can find the list of available icons on the [official Feather website](https://feathericons.com), or by looking at `Feather.IconsName` enum content in the Pod.

All icons contain vector data, so you can resize it as you wish. Their default size is 24×24 pixels.

### Extensions & custom types

Usage of pod’s assets in Interface Builder is not allowed, as the Bundle is different.

That is why NoveFeatherIcons contains subclasses that help you integrate icons on your storyboards and XIBs. It also provides extensions to quickly init common types.

#### UIImageView

You can quickly init an UIImageView containing an icon using:

```swift
let image = UIImage(.feather)
```

In Interface Builder, you can use the `FeatherImageView` subclass to add an icon without code. The icon name goes in the `iconName` field of the Attributes inspector.

Please note that the icon will not show in IB, but will appear when running.

#### UIButton

In Interface builder, you can use the `FeatherButton` subclass to add a button containing an icon without code. The icon name goes in the `iconName` field of the Attributes inspector.

Please note that the icon will not show in IB, but will appear when running.

#### UIBarButtonItem

You can quickly init an UIBarButtonItem containing an icon using:

```swift
init(icon: Feather.IconName, style: UIBarButtonItem.Style, target: Any?, action: Selector?)
```

Example:

```swift
let barButtonItem = UIBarButtonItem(icon: .feather, style: .plain, target: self, action: #selector(featherButtonTapped))
```

In Interface Builder, you can use the `FeatherBarButtonItem` subclass to add an icon without code. The icon name goes in the `iconName` field of the Attributes inspector.

Please note that the icon will not show in IB, but will appear when running.

## Requirements

* iOS 9.0+
* macOS 10.15+

## Credits

Steve Gigou ([Website](https://steve.gigou.fr), [Twitter](https://twitter.com/stevegigou))

All Feather icons are made by [@colebemis](https://twitter.com/colebemis)


## License

NoveFeatherIcons is available under the MIT license. See the LICENSE file for more informations.