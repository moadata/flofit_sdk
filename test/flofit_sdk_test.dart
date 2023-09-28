import 'package:flutter_test/flutter_test.dart';
import 'package:flofit_sdk/flofit_sdk.dart';
import 'package:flofit_sdk/flofit_sdk_platform_interface.dart';
import 'package:flofit_sdk/flofit_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlofitSdkPlatform
    with MockPlatformInterfaceMixin
    implements FlofitSdkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlofitSdkPlatform initialPlatform = FlofitSdkPlatform.instance;

  test('$MethodChannelFlofitSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlofitSdk>());
  });

  test('getPlatformVersion', () async {
    FlofitSdk flofitSdkPlugin = FlofitSdk();
    MockFlofitSdkPlatform fakePlatform = MockFlofitSdkPlatform();
    FlofitSdkPlatform.instance = fakePlatform;

    expect(await flofitSdkPlugin.getPlatformVersion(), '42');
  });
}
