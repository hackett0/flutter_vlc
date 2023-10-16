import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_vlc_platform_interface.dart';

/// An implementation of [FlutterVlcPlatform] that uses method channels.
class MethodChannelFlutterVlc extends FlutterVlcPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_vlc');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
