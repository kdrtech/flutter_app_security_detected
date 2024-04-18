import 'package:flutter/material.dart';

class FlutterAppSecurityDetectedConfig {
  static final FlutterAppSecurityDetectedConfig _singleton =
      FlutterAppSecurityDetectedConfig._internal();

  factory FlutterAppSecurityDetectedConfig() {
    return _singleton;
  }
  Function(bool jailbroken, bool developerMode)? _callback;
  bool _allowSecurityDetected = false;
  String _securityDetectedTitle = "";
  String _securityDetectedMessage = "";
  String _securityDetectedTitleButton = "";
  TextStyle? _textTitleStyle;
  TextStyle? _textBodyStyle;
  TextStyle? _textButtonStyle;

  FlutterAppSecurityDetectedConfig._internal();

  Function(bool jailbroken, bool developerMode)? getCallback() {
    return _callback;
  }

  TextStyle? getTextTitleStyle() {
    return _textTitleStyle;
  }

  TextStyle? getTextBodyStyle() {
    return _textBodyStyle;
  }

  TextStyle? getTextButtonStyle() {
    return _textButtonStyle;
  }

  bool isAllowSecurityDetected() {
    return _allowSecurityDetected;
  }

  String securityDetectedTitle() {
    return _securityDetectedTitle;
  }

  String securityDetectedMessage() {
    return _securityDetectedMessage;
  }

  String securityDetectedTitleButton() {
    return _securityDetectedTitleButton;
  }

  void setConfig({
    bool allowSecurityDetected = false,
    String securityDetectedTitle = "Security Detected",
    String securityDetectedMessage =
        "This application will not run while a jailbreak or in development mode.",
    String securityDetectedTitleButton = "Quit",
    TextStyle? textTitleStyle,
    TextStyle? textBodyStyle,
    TextStyle? textButtonStyle,
    Function(bool jailbroken, bool developerMode)? callback,
  }) {
    _allowSecurityDetected = allowSecurityDetected;
    _securityDetectedTitle = securityDetectedTitle;
    _securityDetectedMessage = securityDetectedMessage;
    _securityDetectedTitleButton = securityDetectedTitleButton;
    _textTitleStyle = textTitleStyle;
    _textBodyStyle = textBodyStyle;
    _textButtonStyle = textButtonStyle;
    _callback = callback;
  }
}
