import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flofit_sdk_method_channel.dart';

abstract class FlofitSdkPlatform extends PlatformInterface {
  /// Constructs a FlofitSdkPlatform.
  FlofitSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlofitSdkPlatform _instance = MethodChannelFlofitSdk();

  /// The default instance of [FlofitSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlofitSdk].
  static FlofitSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlofitSdkPlatform] when
  /// they register themselves.
  static set instance(FlofitSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
