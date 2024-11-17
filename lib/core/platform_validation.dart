import 'package:flutter/foundation.dart';

class PlatformInfo {
  PlatformInfo._privateConstructor();
  static final PlatformInfo _instance = PlatformInfo._privateConstructor();
  factory PlatformInfo() => _instance;
  String _platform = "";

  /// Factory para inicializar la clase y detectar la plataforma automáticamente.
  void detect() {
    if (kIsWeb) {
      this._platform = 'Web';
    } else {
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
          this._platform = 'Android';
          break;
        case TargetPlatform.iOS:
          this._platform = 'iOS';
          break;
        case TargetPlatform.windows:
          this._platform = 'Windows';
          break;
        case TargetPlatform.macOS:
          this._platform = 'MacOS';
          break;
        case TargetPlatform.linux:
          this._platform = 'Android';
          break;
        default:
          this._platform = 'Unknown';
          break;
      }
    }
  }

  /// Método para verificar si es Web.
  bool get isWeb => _platform == 'Web';

  /// Método para verificar si es Android.
  bool get isAndroid => _platform == 'Android';

  /// Método para verificar si es iOS.
  bool get isIOS => _platform == 'iOS';

  /// Método para obtener el nombre de la plataforma.
  String get platformName => _platform;
}