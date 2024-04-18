<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# flutter_app_security_detected

[![Pub Package](https://img.shields.io/pub/v/flutter_app_security_detected.svg?style=flat-square)](https://pub.dev/packages/flutter_app_security_detected)

<a  href="https://www.buymeacoffee.com/kdrtech" target="_blank">
<img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" height="41" />
</a>

Highly feature flutter_app_security_detected widget for Flutter.

| ![Image](https://raw.githubusercontent.com/kdrtech/flutter_app_security_detected/master/example/assets/disable-detected.png)
| :------------: |
| **Disabled Detected**|

| ![Image](https://raw.githubusercontent.com/kdrtech/flutter_app_security_detected/master/example/assets/enabled-detected.png)
| :------------: |
| **Enabled Detected**|

## Features

* Eanble or disabled security detected.
* Change style dialog.

## Usage

Make sure to check out [examples](https://github.com/kdrtech/flutter_app_security_detected/tree/master/example/lib)

### Installation

Add the following line to `pubspec.yaml`:

```yaml
dependencies:
  flutter_app_security_detected: ^1.0.0
```

### Basic setup

*The complete example is available [here](https://github.com/kdrtech/flutter_app_security_detected/tree/master/example/lib).*

## Configuration
```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterAppSecurityDetectedConfig().setConfig(
    allowSecurityDetected: true,
    securityDetectedTitle: "Security Detected",
    securityDetectedMessage:
        "This application will not run while a jailbreak or in development mode.",
    securityDetectedTitleButton: "Close",
    callback: (jailbroken, developerMode) {
      print(jailbroken);
      print(developerMode);
    },
    textTitleStyle: const TextStyle(
      color: Colors.red,
      fontSize: 30,
    ),
    textBodyStyle: TextStyle(
      fontSize: 20,
      color: Colors.red.withAlpha(100),
    ),
    textButtonStyle: const TextStyle(
      color: Colors.red,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  );
  runApp(const MyApp());
}
```

## Extent your flutter stateFulWidget from our class:
- FlutterAppSecurityDetectedStatefulWidget and FlutterAppSecurityDetectedStatefulWidgetState
```dart
class FlutterAppSecurityDetectedExample
    extends FlutterAppSecurityDetectedStatefulWidget {
  @override
  FlutterAppSecurityDetectedExampleState createState() =>
      FlutterAppSecurityDetectedExampleState();
}

class FlutterAppSecurityDetectedExampleState
    extends FlutterAppSecurityDetectedStatefulWidgetState<
        FlutterAppSecurityDetectedExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Security Detected")),
      body: const Center(
        child: Text("Sample Security Detected"),
      ),
    );
  }
}
```
### Events
use `callback` will return status of your device detected.

```dart
    callback: (jailbroken, developerMode) {
      print(jailbroken);
      print(developerMode);
    }
```

Hello everyone 👋

If you want to support me, feel free to do so. 

Thanks

============================================

សួស្ដី អ្នកទាំងអស់គ្នា👋 

បើ​អ្នក​ចង់​គាំទ្រ​ខ្ញុំ សូម​ធ្វើ​ដោយ​សេរី , 

សូមអរគុណ

<a  href="https://www.buymeacoffee.com/kdrtech" target="_blank">
<img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" height="41" />
</a>
