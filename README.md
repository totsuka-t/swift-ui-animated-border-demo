# swift-ui-animated-border-demo
Demo project for Animated Border in SwiftUI.

## Feature

### Default Border
```swift
Text("Default Color")
    .frame(width: 250, height: 50)
    .modifier(AnimatedBorder())
```

<img src="https://github.com/totsuka-t/swift-ui-animated-border-demo/assets/83593763/6a641566-b74e-4973-b3de-62d9b10e4dbc" width="350">

### Custom Border
You can customize styling of the border.

Customizable
- borderColors
- backgroundColor
- shape
- borderWidth
- duration

You can customize it to any color you like.

```swift
Text("Custom Color")
    .frame(width: 250, height: 50)
    .modifier(AnimatedBorder(borderColors: [.green, .orange, .yellow]))
```

<img src="https://github.com/totsuka-t/swift-ui-animated-border-demo/assets/83593763/4e7290fb-f3a9-4f92-934a-743ab5e7f79b" width="350">

You can even change the shape and width of the border.

```swift
Text("Custom Animated Border")
    .frame(width: 250, height: 50)
    .modifier(
        AnimatedBorder(
            borderColors: [
                Color(.init(red: 187/255, green: 255/255, blue: 239/255, alpha: 1)),
                Color(.init(red: 236/255, green: 237/255, blue: 203/255, alpha: 1)),
                Color(.init(red: 255/255, green: 155/255, blue: 252/255, alpha: 1)),
                Color(.init(red: 248/255, green: 227/255, blue: 183/255, alpha: 1)),
            ],
            shape: AnyShape(Capsule()),
            borderWidth: 10,
            duration: 0.5
        )
    )
```

<img src="https://github.com/totsuka-t/swift-ui-animated-border-demo/assets/83593763/c01aa040-c94c-487d-b655-e68e77c3e895" width="350">
