
import 'dart:async';

import 'package:flutter/services.dart';

class ImageStudioPro {
  static const MethodChannel _channel =
      const MethodChannel('image_studio_pro');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
