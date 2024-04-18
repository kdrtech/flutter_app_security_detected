// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_security_detected/flutter_app_security_detected.dart';

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
