
import 'flutter_vlc_platform_interface.dart';

class FlutterVlc {
  Future<String?> getPlatformVersion() {
    return FlutterVlcPlatform.instance.getPlatformVersion();
  }
}
