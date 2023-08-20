import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:upgrade_manager/models/app_market.dart';

/// An implementation of [UpgradePlatform] that uses method channels.
class UpgradeInNative {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  static const MethodChannel methodChannel =
      MethodChannel('io.verse.upgrade_manager/in_app_upgrade');

  /// Only for ios, should check platform before use.
  static Future<FlutterError?> openAppStoreInApp(String appId) async {
    return methodChannel.invokeMethod("openAppStoreInApp", {"appId": appId});
  }

  /// Only for android, should check platform before use.
  static Future<FlutterError?> installApk(String filePath) async {
    return methodChannel.invokeMethod("installApk", {"filePath": filePath});
  }

  /// Only for android, should check platform before use.
  static Future<FlutterError?> openAppMarket(
      {AppMarket market = AppMarket.official}) async {
    return methodChannel.invokeMethod("openAppMarket", {"market": market.name});
  }
}
