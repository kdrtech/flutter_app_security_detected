import 'package:flutter/material.dart';

/// FlutterAppSecurityDetectedConfig
///
/// App can set default dialog UI or make change something.
///
class FlutterAppSecurityDetectedConfig {
  static final FlutterAppSecurityDetectedConfig _singleton =
      FlutterAppSecurityDetectedConfig._internal();

  factory FlutterAppSecurityDetectedConfig() {
    return _singleton;
  }

  /// The [_callback] callback function.
  Function(bool jailbroken, bool developerMode)? _callback;

  /// The [_allowSecurityDetected] allow user enable security detected.
  bool _allowSecurityDetected = false;

  /// The [_securityDetectedTitle] set title dialog.
  String _securityDetectedTitle = "";

  /// The [_securityDetectedMessage] set message dialog.
  String _securityDetectedMessage = "";

  /// The [_securityDetectedTitleButton] set title button dialog.
  String _securityDetectedTitleButton = "";

  /// The [_textTitleStyle] set title style.
  TextStyle? _textTitleStyle;

  /// The [_textBodyStyle] set body style.
  TextStyle? _textBodyStyle;

  /// The [_textButtonStyle] set button style.
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
