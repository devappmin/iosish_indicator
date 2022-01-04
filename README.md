# Iosish Indicator

Flutter Iosish Indicator which can create awesome and simple iOS style floating indicator that can be found when silent/sleep mode switched.

### Top
![1](https://user-images.githubusercontent.com/4322099/147883683-879968e3-c4bc-474a-9785-eb75fe6a9937.gif)

### Bottom
![2](https://user-images.githubusercontent.com/4322099/147883686-955fd51b-9404-42f8-9f19-6d071fd9f059.gif)

### It also supports Dark mode!
![3](https://user-images.githubusercontent.com/4322099/147883688-c6b4180d-27a0-464b-a623-06f250973006.gif)

## Getting started

### Depend on it.
```
flutter pub add iosish_indicator
```

**or**

Add below line to your personal package's `pubspec.yaml`.

```yaml
dependencies:
  iosish_indicator: ^1.0.0
```
And run `flutter pub get` to install.

### Import it.
```dart
import 'package:iosish_indicator/iosish_indicator.dart';
```

### Create Indicator.
```dart
Iosish(context).createIndicator(
  // Put props here..
);
```

## Props
|Props|Types|Default|Description|
|-|-|-|-|
|`title`|`String`|required|The main indicator text to show.|
|`position`|`Position`|`Position.top`|The position value where the indicator will be shown.|
|`duration`|`Duration?`|`Duration(seconds:2)`|The presenting duration value.|
|`haptic`|`bool`|`true`|Create `HapticFeedback.heavyImpact()` haptic when the indicator created.|
|`child`|`Widget?`|`null`|Put child widget into left side of indicator.|

## Example
```dart
import 'package:iosish_indicator/iosish_indicator.dart';
...
Iosish(context).createIndicator(
  title: "Hello, Iosish Indicator!",
  position: Position.bottom,
  duration: const Duration(seconds: 2),
  child: const Icon(Icons.check_circle),
);
```

## License
```
MIT License

Copyright (c) 2021 Kim Seung Hwan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
