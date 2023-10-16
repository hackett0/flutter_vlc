import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_vlc/flutter_vlc.dart';
import 'package:flutter_vlc/flutter_vlc_platform_interface.dart';
import 'package:flutter_vlc/flutter_vlc_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterVlcPlatform
    with MockPlatformInterfaceMixin
    implements FlutterVlcPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterVlcPlatform initialPlatform = FlutterVlcPlatform.instance;

  test('$MethodChannelFlutterVlc is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterVlc>());
  });

  test('getPlatformVersion', () async {
    FlutterVlc flutterVlcPlugin = FlutterVlc();
    MockFlutterVlcPlatform fakePlatform = MockFlutterVlcPlatform();
    FlutterVlcPlatform.instance = fakePlatform;

    expect(await flutterVlcPlugin.getPlatformVersion(), '42');
  });
}
