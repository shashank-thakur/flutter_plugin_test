import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugins/plugins.dart';

void main() {
  const MethodChannel channel = MethodChannel('plugins');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Plugins.platformVersion, '42');
  });
}
