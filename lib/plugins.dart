import 'dart:async';

import 'package:flutter/services.dart';

class Plugins {
  static const MethodChannel _channel =
      const MethodChannel('plugins');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> showName(String name) async {
    await _channel.invokeMethod("showName");
    return null;
  }
}
