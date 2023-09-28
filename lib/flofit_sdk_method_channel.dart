import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flofit_sdk_platform_interface.dart';

/// An implementation of [FlofitSdkPlatform] that uses method channels.
class MethodChannelFlofitSdk extends FlofitSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flofit_sdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
