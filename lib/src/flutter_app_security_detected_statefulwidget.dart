import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_security_detected/src/flutter_app_security_detected_config.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';

import 'flutter_app_security_detected_view.dart';

/// FlutterAppSecurityDetectedStatefulWidget is the main class of the FlutterAppSecurityDetectedStatefulWidget API.
///
/// App must be use this class to get notify app secure.
/// you can check some required, some not.
///
class FlutterAppSecurityDetectedStatefulWidget extends StatefulWidget {
  @override
  FlutterAppSecurityDetectedStatefulWidgetState createState() =>
      FlutterAppSecurityDetectedStatefulWidgetState();
}

class FlutterAppSecurityDetectedStatefulWidgetState<
    T extends FlutterAppSecurityDetectedStatefulWidget> extends State<T> {
  void _onDeviceCheck({required jailbroken, required developerMode}) {
    if (jailbroken || developerMode) {
      FlutterAppSecurityDetectedView.instance.dialogBuilder(context);
    }
  }

  @override
  void initState() {
    if (FlutterAppSecurityDetectedConfig().isAllowSecurityDetected()) {
      initPlatformState();
    }
    super.initState();
  }

  Future<void> initPlatformState() async {
    /// The [jailbroken] jailbroken status
    bool jailbroken;

    /// The [developerMode] developerMode status
    bool developerMode;

    /// Platform messages may fail, so we use a try/catch PlatformException.
    try {
      jailbroken = await FlutterJailbreakDetection.jailbroken;
      developerMode = await FlutterJailbreakDetection.developerMode;
    } on PlatformException {
      jailbroken = true;
      developerMode = true;
    }
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;
    _onDeviceCheck(jailbroken: jailbroken, developerMode: developerMode);
    FlutterAppSecurityDetectedConfig()
        .getCallback()
        ?.call(jailbroken, developerMode);
  }

  @override
  Widget build(BuildContext context) {
    return build(context);
  }
}
