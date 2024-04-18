// TODO: Put public facing types in this file.

import 'package:flutter/material.dart';
import 'package:restart_app/restart_app.dart';

import 'flutter_app_security_detected_config.dart';

/// Checks if you are awesome. Spoiler: you are.
class FlutterAppSecurityDetectedView {
  FlutterAppSecurityDetectedView._();

  static final FlutterAppSecurityDetectedView _instance =
      FlutterAppSecurityDetectedView._().._init();

  /// Shared instance to initialize the AdMob SDK.
  static FlutterAppSecurityDetectedView get instance => _instance;

  void _init() {}

  Future<void> dialogBuilder(BuildContext context) {
    return showDialog<void>(
      barrierDismissible: false,
      barrierColor: Colors.white,
      context: context,
      useSafeArea: false,
      builder: (BuildContext context) {
        return Dialog.fullscreen(
            backgroundColor: const Color(0xFFFBE6E8),
            child: Column(children: [
              const Spacer(),
              Text(
                FlutterAppSecurityDetectedConfig().securityDetectedTitle(),
                textAlign: TextAlign.center,
                style: FlutterAppSecurityDetectedConfig().getTextTitleStyle() ??
                    TextStyle(
                        fontSize: 22,
                        color: Color(0xFFB7486D),
                        fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  FlutterAppSecurityDetectedConfig().securityDetectedMessage(),
                  textAlign: TextAlign.center,
                  style:
                      FlutterAppSecurityDetectedConfig().getTextBodyStyle() ??
                          TextStyle(
                            fontSize: 20,
                            color: Color(0xFFB54467),
                          ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                  ),
                  child: Text(
                    FlutterAppSecurityDetectedConfig()
                        .securityDetectedTitleButton()
                        .toUpperCase(),
                    textAlign: TextAlign.center,
                    style: FlutterAppSecurityDetectedConfig()
                            .getTextButtonStyle() ??
                        TextStyle(
                            fontSize: 22,
                            color: Color(0xFFB7486D),
                            fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Restart.restartApp();
                  },
                ),
              ),
            ]));
      },
    );
  }
}
