import 'package:flutter_test/flutter_test.dart';
import 'package:blue_async/blue_async.dart';
import 'package:blue_async/blue_async_platform_interface.dart';
import 'package:blue_async/blue_async_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBlueAsyncPlatform
    with MockPlatformInterfaceMixin
    implements BlueAsyncPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BlueAsyncPlatform initialPlatform = BlueAsyncPlatform.instance;

  test('$MethodChannelBlueAsync is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBlueAsync>());
  });

  test('getPlatformVersion', () async {
    BlueAsync blueAsyncPlugin = BlueAsync();
    MockBlueAsyncPlatform fakePlatform = MockBlueAsyncPlatform();
    BlueAsyncPlatform.instance = fakePlatform;

    expect(await blueAsyncPlugin.getPlatformVersion(), '42');
  });
}
