import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'blue_async_method_channel.dart';

abstract class BlueAsyncPlatform extends PlatformInterface {
  /// Constructs a BlueAsyncPlatform.
  BlueAsyncPlatform() : super(token: _token);

  static final Object _token = Object();

  static BlueAsyncPlatform _instance = MethodChannelBlueAsync();

  /// The default instance of [BlueAsyncPlatform] to use.
  ///
  /// Defaults to [MethodChannelBlueAsync].
  static BlueAsyncPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BlueAsyncPlatform] when
  /// they register themselves.
  static set instance(BlueAsyncPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
