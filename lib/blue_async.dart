
import 'blue_async_platform_interface.dart';

class BlueAsync {
  Future<String?> getPlatformVersion() {
    return BlueAsyncPlatform.instance.getPlatformVersion();
  }
}
