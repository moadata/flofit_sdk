
import 'flofit_sdk_platform_interface.dart';

class FlofitSdk {
  Future<String?> getPlatformVersion() {
    return FlofitSdkPlatform.instance.getPlatformVersion();
  }
}
