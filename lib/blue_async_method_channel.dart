import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'blue_async_platform_interface.dart';

/// An implementation of [BlueAsyncPlatform] that uses method channels.
class MethodChannelBlueAsync extends BlueAsyncPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('blue_async');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
