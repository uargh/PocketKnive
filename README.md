# PocketKnive
A collection of useful Swift extensions and subclasses

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![Swift 4.2](https://img.shields.io/badge/Swift-4.2-4BC51D.svg?style=flat)](https://swift.org/blog/swift-4-2-released/)

# Install
**PocketKnive** is only available through Carthage. To install just add the following to your Cartfile:

```
github "uargh/PocketKnive"
```

# Subclasses

## PKEdgeLabel

```swift
let insetLabel = PKEdgeLabel()
insetLabel.backgroundColor = .red
insetLabel.text = "Hallo World"

insetLabel.bottomTextInset = 8
insetLabel.leftTextInset = 16
insetLabel.rightTextInset = 16
insetLabel.topTextInset = 8

// OR

insetLabel.textInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
```

# Extensions

## Array

### remove

```swift
Array.remove(_ element: Element) -> Index?
Array.remove(_ elements: [Element]) -> [Index]
```

#### Remove single element

```swift
var array: [Int] = Array(0...10)
let removedIndex = array.remove(5)

print("\(removedIndex)") // Optional(5)
print("\(array)")        // [0, 1, 2, 3, 4, 6, 7, 8, 9, 10]
```

#### Remove multiple elements

```swift
var array: [Int] = Array(0...10)
let removedIndices = array.remove([1, 3, 5, 7, 9])

print("\(removedIndices)") // [1, 2, 3, 4, 5]
print("\(array)")          // [0, 2, 4, 6, 8, 10]
```

## Date

### weekOfYear

```swift
Date().weekOfYear // 1 - 52
```

## String

### base64

#### base64Encoded

```swift
let string = "Lorem ipsum dolor"
print(string.base64Encoded) // Optional("TG9yZW0gaXBzdW0gZG9sb3I=")
```

#### base64Decoded

```swift
let string = "TG9yZW0gaXBzdW0gZG9sb3I="
print(string.base64Decoded) // Optional("Lorem ipsum dolor")
```

### capitalizingFirstLetter

```swift
let string = "capitalized?"
print(string.capitalizingFirstLetter()) // "Capitalized?"
```

### capitalizeFirstLetter

```swift
var string = "capitalized?"
string.capitalizeFirstLetter()
print(string) // "Capitalized?"
```

### containEmoji

```swift
print("\("abcdefg".containEmoji)") // false

print("\("😋".containEmoji)") // true
```

### height

```swift
String.height(forWidth width: CGFloat, attributes: [NSAttributedString.Key : Any]?) -> CGFloat
```

```swift
"Lorem ipsum dolor sit amet, consectetur adipisicing elit.".height(forWidth: 200, attributes: nil) // 28.0
```

```swift
let copy = "Lorem ipsum dolor sit amet, consectetur adipisicing elit."

let paragraphStyle = NSMutableParagraphStyle()
paragraphStyle.lineHeightMultiple = 1.25

let attributes: [NSAttributedString.Key : Any] = [
    NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 32),
    NSAttributedString.Key.kern : 0.25,
    NSAttributedString.Key.paragraphStyle : paragraphStyle
]

copy.height(forWidth: 200, attributes: attributes) // 287.0
```

### isValidEmail

```swift
print("\("a@b.c".isValidEmail)") // true

print("\("a@b".isValidEmail)") // false
```

## UIGestureRecognizer

### removeFromView

```swift
override func viewDidLoad() {
    let gR = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(sender:)))
    self.view.addGestureRecognizer(gR)
}

@objc func handleTap(sender: UITapGestureRecognizer) {
    sender.removeFromView()
}
```

## UILabel

### rotation

```swift
let label = UILabel()
label.rotation = 5
```

## UIScrollView

### snapshot

```swift
UIScrollView.snapshot -> UIImage?
```

```swift
let scrollView = UIScrollView()
guard let snapshot = scrollView.snapshot else { return }
```

## UIViewController

### presentOverCurrentContext

```swift
let vc = ViewController()
self.presentOverCurrentContext(viewController: vc, animated: true, completion: nil)
```

# Author
Jonas Heitzer

# License
Do whatever you want with it, i don't care.
