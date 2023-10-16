import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_vlc_method_channel.dart';

abstract class FlutterVlcPlatform extends PlatformInterface {
  /// Constructs a FlutterVlcPlatform.
  FlutterVlcPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterVlcPlatform _instance = MethodChannelFlutterVlc();

  /// The default instance of [FlutterVlcPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterVlc].
  static FlutterVlcPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterVlcPlatform] when
  /// they register themselves.
  static set instance(FlutterVlcPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
